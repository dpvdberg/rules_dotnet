#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h> 
#include <sys/stat.h>
#ifdef _MSC_VER
#include <direct.h>
#include <windows.h>
#include <Shlwapi.h>
#include <io.h>
#include <process.h>
#define F_OK 0
#pragma comment(lib, "shlwapi.lib")
#else
#include <unistd.h>
#include <errno.h>
#endif

#include "manifest.h"

extern const char * Exe;
struct Entry* g_Entries = NULL;


void ReadManifest(const char *manifestDir)
{
	char buffer[64*1024];
	FILE *f;
	char *p;
	int line = 0;
	struct Entry *entry;

	strcpy(buffer, manifestDir);
	strcat(buffer, "/MANIFEST");
	/* read manifest file */
	f = fopen(buffer, "r");
	if (f == NULL) {
		p = getcwd(buffer, sizeof(buffer));
		printf("Can't open file MANIFEST in %s\n", p);
		exit(-1);
	}
	while (fgets(buffer, sizeof(buffer), f) != NULL ) 
	{
		++line;
		p = strchr(buffer, '\n');
		if (p != NULL) 
			*p = '\0';
		p = strchr(buffer, '\r');
		if (p != NULL) 
			*p = '\0';
			
		p = strchr(buffer, ' ');
		if (p == NULL) {
			printf("Line %d is malformatted (no space)\n", line);
			exit(-1);			
		}
		*p = '\0';
		entry = (struct Entry*) malloc(sizeof(struct Entry));
		entry->Key = strdup(buffer);
		entry->Path = strdup(p+1);
		entry->Next = g_Entries;
		g_Entries = entry;
	}
	fclose (f);
}

#ifdef _MSC_VER
static void CreateLinkIfNeeded(const char* target, const char *toCreate) 
{
	BOOL result;
	DWORD error;
	DWORD flag;

    if (!PathFileExists(target)) {
        printf("File %s does not exist\n", target);
        exit(-1);			
    }

    flag = SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE;
    retry:
    result = CreateSymbolicLink(toCreate, target, flag);
    if (!result) {
        error = GetLastError();
        if (error == 87 && flag!=0) {
            printf("SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE seems not supported\n");
            flag = 0;
            goto retry;
        }
        if (error != ERROR_ALREADY_EXISTS) {
            printf("Error %d on linking %s to %s\n", error, toCreate, target);
            exit(-1);
        }
    }
}
#else
static void CreateLinkIfNeeded(const char* target, const char *toCreate) 
{
    int result;
    if (access(target, F_OK)==-1) {
        printf("File %s does not exist\n", target);
        exit(-1);			
    }

    result = symlink(target, toCreate);
    if (result!=0) {
        int error = errno;
        if (error != EEXIST) {
            printf("Error %d on linking %s to %s\n", error, toCreate, target);
            exit(-1);
        }
    }
}
#endif

void LinkFiles(const char *manifestDir) {
	const struct Entry *p = g_Entries;
	const char *basename;
	char toCreate[64*1024];

	while(p != NULL) {
		basename = strrchr(p->Key, '/');
		if (basename == NULL)
			basename = p->Key;
		else 
			++basename;

		sprintf(toCreate, "%s/%s", manifestDir, basename);

        CreateLinkIfNeeded(p->Path, toCreate);
		p = p->Next;
	}
}

#ifdef _MSC_VER
typedef struct _stat Stat;
static void do_mkdir(const char *path)
{
    Stat            st;

    if (access(path, F_OK) == 0) {
        return;
    }

    /* Directory does not exist. EEXIST for race condition */
    if (_mkdir(path) != 0 && errno != EEXIST) {
        printf("Error %d creating directoryxx for %s\n", errno, path);
        //exit(-1);        
    }
}

#else

typedef struct stat Stat;
static void do_mkdir(const char *path)
{
    Stat            st;
    int status = 0;

    if (stat(path, &st) != 0)
    {
        /* Directory does not exist. EEXIST for race condition */
        if (mkdir(path, 0777) != 0 && errno != EEXIST)
            status = -1;
    }
    else if (!S_ISDIR(st.st_mode))
    {
        errno = ENOTDIR;
        status = -1;
    }

    if (status != 0) {
        printf("Error %d creating directoryxx for %s\n", errno, path);
        //exit(-1);        
    }
}
#endif

static void NormalizeDir(char *path)
{
    char *q, *p;
    while ((q = strchr(path, '\\'))!= NULL) {
        *q = '/';
    }

    while((p = strstr(path, "../"))!=NULL) {
        q = strchr(p+3, '/');
        if (q == NULL) {
            printf("Failed to normalize dir %s\n", path);
            exit(-1);
        }

        memcpy(p, q+1, strlen(q+1)+1);
    }
}
static void CreateDirTreeForFile(const char * path)
{
    char *pp;
    char *sp;
    char  copypath[64*1024];

    strcpy(copypath, path);

    pp = strrchr(copypath, '/');
    *(pp+1) = '\0';

    pp = copypath;
    while ((sp = strchr(pp, '/')) != NULL)
    {
        if (sp != pp)
        {
            /* Neither root nor double slash in path */
            *sp = '\0';
            do_mkdir(copypath);
            *sp = '/';
        }
        pp = sp + 1;
    }
}


void LinkFilesTree(const char *manifestDir) {
	const struct Entry *p = g_Entries;
	char toCreate[64*1024];

	while(p != NULL) {
		sprintf(toCreate, "%s%s", manifestDir, p->Key);
        NormalizeDir(toCreate);

        CreateDirTreeForFile(toCreate);
        CreateLinkIfNeeded(p->Path, toCreate);
		p = p->Next;
	}
}

/* I didn't find an easy way to locate MANIFEST file. 
   Until now, I have identified the following cases:
   1. Current directory (run on Windows).
   2. Parrent directory (run on Linux and osx).
   3. <currentdir>/<launcher>.runfiles (when used as a tool and launcher is this program)
   This function tries to locate the MANIFEST file and returns
   an absolute path to directory with it.
*/
const char *GetManifestDir() {
	static char buffer[64*1024];
	char *p;
	p = getcwd(buffer, sizeof(buffer));
	if (access("MANIFEST", F_OK)!=-1)
		return buffer;


	strcat(buffer, "/../MANIFEST");
	if (access(buffer, F_OK)!=-1) {
		p = strrchr(buffer, '/');
		*(p+1) = '\0';
    
		return buffer;
	}

	p = getcwd(buffer, sizeof(buffer));
	strcat(buffer, "/");
	strcat(buffer, Exe);
	/* We have to convert Exe name to this launcher name (by removing _exe suffix and possibly .exe 
	   on non-Windows platforms) */
	p = strrchr(buffer, '_');
	#ifdef _MSC_VER
	strcpy(p, p+4);
	#else
	strcpy(p, p+8);
	#endif	
    
	strcat(buffer, ".runfiles/MANIFEST");
	printf("Checking %s\n", buffer);
	if (access(buffer, F_OK)!=-1) {
		p = strrchr(buffer, '/');
		*(p+1) = '\0';
		return buffer;
	}
	
	printf("Couldn't find MANIFEST file\n");
	exit(-1);
}
