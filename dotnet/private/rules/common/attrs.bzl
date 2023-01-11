"The attributes used by binary/library/test rules"

load("@bazel_skylib//lib:dicts.bzl", "dicts")
load("//dotnet/private:providers.bzl", "DotnetAssemblyInfo")
load("//dotnet/private/transitions:tfm_transition.bzl", "tfm_transition")

# These are attributes that are common across all the binary/library/test .Net rules
COMMON_ATTRS = {
    "deps": attr.label_list(
        doc = "Other libraries, binaries, or imported DLLs",
        providers = [DotnetAssemblyInfo],
        cfg = tfm_transition,
    ),
    "data": attr.label_list(
        doc = "Runtime files. It is recommended to use the @rules_dotnet//tools/runfiles library to read the runtime files.",
        allow_files = True,
        default = [],
        allow_empty = True,
    ),
    "compile_data": attr.label_list(
        doc = "Additional compile time files.",
        allow_files = True,
        default = [],
        allow_empty = True,
    ),
    "keyfile": attr.label(
        doc = "The key file used to sign the assembly with a strong name.",
        allow_single_file = True,
    ),
    "langversion": attr.string(
        doc = "The version string for the language.",
    ),
    "resources": attr.label_list(
        doc = "A list of files to embed in the DLL as resources.",
        allow_files = True,
    ),
    "out": attr.string(
        doc = "File name, without extension, of the built assembly.",
    ),
    "target_frameworks": attr.string_list(
        doc = "A list of target framework monikers to build" +
              "See https://docs.microsoft.com/en-us/dotnet/standard/frameworks",
        mandatory = True,
        allow_empty = False,
    ),
    "project_sdk": attr.string(
        doc = "The project SDK that is being targeted. " +
              "See https://learn.microsoft.com/en-us/dotnet/core/project-sdk/overview",
        default = "default",
        values = ["default", "web"],
    ),
    "runtime_identifier": attr.string(
        doc = "The runtime identifier that is being targeted. " +
              "See https://docs.microsoft.com/en-us/dotnet/core/rid-catalog",
        mandatory = True,
    ),
    "defines": attr.string_list(
        doc = "A list of preprocessor directive symbols to define.",
        default = [],
        allow_empty = True,
    ),
    "internals_visible_to": attr.string_list(
        doc = "Other libraries that can see the assembly's internal symbols. Using this rather than the InternalsVisibleTo assembly attribute will improve build caching.",
    ),
    "private_deps": attr.label_list(
        doc = """Private dependencies 

        This attribute should be used for dependencies are only private to the target. 
        The dependencies will not be propagated transitively to parent targets and 
        do not become part of the targets runfiles.
        """,
        providers = [DotnetAssemblyInfo],
        cfg = tfm_transition,
    ),
    "treat_warnings_as_errors": attr.bool(
        doc = "Treat all compiler warnings as errors. Note that this attribute can not be used in conjunction with warnings_as_errors.",
        mandatory = False,
    ),
    "override_treat_warnings_as_errors": attr.bool(
        doc = "Whether or not to override the treat_warnings_as_errors attribute.",
        mandatory = False,
    ),
    "warnings_as_errors": attr.string_list(
        doc = "List of compiler warning codes that should be considered as errors. Note that this attribute can not be used in conjunction with treat_warning_as_errors.",
        mandatory = False,
    ),
    "override_warnings_as_errors": attr.bool(
        doc = "Whether or not to override the warnings_as_errors attribute.",
        mandatory = False,
    ),
    "warnings_not_as_errors": attr.string_list(
        doc = "List of compiler warning codes that should not be considered as errors. Note that this attribute can only be used in conjunction with treat_warning_as_errors.",
        mandatory = False,
    ),
    "override_warnings_not_as_errors": attr.bool(
        doc = "Whether or not to override the warnings_not_as_errors attribute.",
        mandatory = False,
    ),
    "warning_level": attr.int(
        doc = "The warning level that should be used by the compiler.",
        mandatory = False,
        values = [0, 1, 2, 3, 4, 5],
        default = 3,
    ),
    "override_warning_level": attr.bool(
        doc = "Whether or not to override the warning_level attribute.",
        mandatory = False,
    ),
    "strict_deps": attr.bool(
        doc = """Whether to use strict dependencies or not. 
        
        This attribute mirrors the DisableTransitiveProjectReferences in MSBuild.
        The default setting of this attribute can be overridden in the toolchain configuration""",
        default = True,
    ),
    "override_strict_deps": attr.bool(
        doc = "Whether or not to override the strict_deps attribute.",
        mandatory = False,
    ),
    "_target_framework": attr.label(
        default = "@rules_dotnet//dotnet:target_framework",
    ),
    "_windows_constraint": attr.label(default = "@platforms//os:windows"),
    "_allowlist_function_transition": attr.label(
        default = "@bazel_tools//tools/allowlists/function_transition_allowlist",
    ),
    "_compiler_wrapper": attr.label(
        default = "@rules_dotnet//dotnet/private:compiler_wrapper.sh",
        executable = True,
        cfg = "exec",
        allow_single_file = True,
    ),
}

# These are attributes that are common across all libarary rules
LIBRARY_COMMON_ATTRS = {
    "exports": attr.label_list(
        doc = """
        List of targets to add to the dependencies of those that depend on this target. 
        Use this sparingly as it weakens the precision of the build graph.
        
        This attribute does nothing if you don't have strict dependencies enabled.""",
        default = [],
        providers = [DotnetAssemblyInfo],
    ),
}

# These are attributes that are common across all binary/test rules
BINARY_COMMON_ATTRS = {
    "winexe": attr.bool(
        doc = "If true, output a winexe-style executable, otherwise" +
              "output a console-style executable.",
        default = False,
    ),
    "apphost_shimmer": attr.label(
        providers = [DotnetAssemblyInfo],
        executable = True,
        cfg = "exec",
    ),
    "_bash_runfiles": attr.label(
        default = "@bazel_tools//tools/bash/runfiles",
        allow_single_file = True,
    ),
    "_launcher_sh": attr.label(
        doc = "A template file for the launcher on Linux/MacOS",
        default = "@rules_dotnet//dotnet/private:launcher.sh.tpl",
        allow_single_file = True,
    ),
    "_launcher_bat": attr.label(
        doc = "A template file for the launcher on Windows",
        default = "@rules_dotnet//dotnet/private:launcher.bat.tpl",
        allow_single_file = True,
    ),
}

# These are attributes that are common across all the binary/library/test C# rules
CSHARP_COMMON_ATTRS = dicts.add(
    COMMON_ATTRS,
    {
        "srcs": attr.label_list(
            doc = "The source files used in the compilation.",
            allow_files = [".cs"],
        ),
        "additionalfiles": attr.label_list(
            doc = "Extra files to configure analyzers.",
            allow_files = True,
        ),
    },
)

# These are attributes that are common across all the library C# rules
CSHARP_LIBRARY_COMMON_ATTRS = dicts.add(
    CSHARP_COMMON_ATTRS,
    LIBRARY_COMMON_ATTRS,
)

# These are attributes that are common across all the binary C# rules
CSHARP_BINARY_COMMON_ATTRS = dicts.add(
    CSHARP_COMMON_ATTRS,
    BINARY_COMMON_ATTRS,
)

# These are attributes that are common across all the binary/library/test F# rules
FSHARP_COMMON_ATTRS = dicts.add(
    COMMON_ATTRS,
    {
        "srcs": attr.label_list(
            doc = "The source files used in the compilation.",
            allow_files = [".fs"],
        ),
    },
)

# These are attributes that are common across all the library F# rules
FSHARP_LIBRARY_COMMON_ATTRS = dicts.add(
    FSHARP_COMMON_ATTRS,
    LIBRARY_COMMON_ATTRS,
)

# These are attributes that are common across all the binary F# rules
FSHARP_BINARY_COMMON_ATTRS = dicts.add(
    FSHARP_COMMON_ATTRS,
    BINARY_COMMON_ATTRS,
)
