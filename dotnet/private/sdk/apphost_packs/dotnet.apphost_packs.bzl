"GENERATED"

load("@rules_dotnet//dotnet:defs.bzl", "nuget_repo")

def apphost_packs():
    "apphost_packs"
    nuget_repo(
        name = "dotnet.apphost_packs",
        packages = [
            {"name": "microsoft.netcore.app.host.linux-x64.v3.0.3", "id": "Microsoft.NETCore.App.Host.linux-x64", "version": "3.0.3", "sha512": "sha512-GUhjsX3RrvzfRmGH7ol6VvVOVc8DQagZgolXuBNR0W9H/w3fGeCK32ZxZjQ1HS1qzZ1tloQPRjz1ba1MPqlkDA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-arm64.v3.0.3", "id": "Microsoft.NETCore.App.Host.linux-arm64", "version": "3.0.3", "sha512": "sha512-6T+r7FjmaJOcWw8dIs0pi3KNo3sU/Ggk25rhsY5SYLS6dtap1k0fVkJHeZxXeXGckunScQ/XgKAYDPQ1iETXvg==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-x64.v3.0.3", "id": "Microsoft.NETCore.App.Host.linux-musl-x64", "version": "3.0.3", "sha512": "sha512-Fymy5EH69k06lZLcAzuvskwmmcyeZZmQwRrh0R13kAgPy1cH9rVfy77b1IDzkXxKNO7B4ANHdC80sfAiT8Wlmg==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-arm64.v3.0.3", "id": "Microsoft.NETCore.App.Host.linux-musl-arm64", "version": "3.0.3", "sha512": "sha512-rwJyEcl3wwxCI0hyIOw7tHsCfA5v2NpZVa3GZSFa7/nJmtyZlTfWyuYAXxdnFzxSwU2DNYL3kYy59/4+9EF4hA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.osx-x64.v3.0.3", "id": "Microsoft.NETCore.App.Host.osx-x64", "version": "3.0.3", "sha512": "sha512-eIA7DY8jtGGCw+89OfgbRy05orLvoI4YKNkX3fGioKJRnzjLvg1QcbcfqVTHeXxo1hTP8qJBrNPJi54Tl3V0kw==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-x64.v3.0.3", "id": "Microsoft.NETCore.App.Host.win-x64", "version": "3.0.3", "sha512": "sha512-5U3jATWwbKMwTseDUE9zqDgbTwVkARyuEd6kk9eJ2RQWCQUhc4xweDWaOQ+gjO1RfEiSFhN0ZI4LSvZJWX2cow==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-arm64.v3.0.3", "id": "Microsoft.NETCore.App.Host.win-arm64", "version": "3.0.3", "sha512": "sha512-h4tRZdiosNe48JJU91uw7WBga3AkT6dOvJSBgqnAaYIXZ1Hbc/z2NZ79D3JsKyXIdcQaqW1k0eI2ticzeqtjMA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-x64.v3.1.32", "id": "Microsoft.NETCore.App.Host.linux-x64", "version": "3.1.32", "sha512": "sha512-4eu4PWwNn8v1ddv6+fAZZ3DVazO/uAtfRalMVQWBVzilB0LZZoJ9PLuMiSyHn0AY+ARCqHJofWSHxSiWfC1yyw==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-arm64.v3.1.32", "id": "Microsoft.NETCore.App.Host.linux-arm64", "version": "3.1.32", "sha512": "sha512-kH1+TFUJTQOoUBrEFwHYNryf28OO4JF3xcOTbUN/8WGS3NW29oCqyR88RYKEOly7QThmGua/PNd8IpjC10vRaA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-x64.v3.1.32", "id": "Microsoft.NETCore.App.Host.linux-musl-x64", "version": "3.1.32", "sha512": "sha512-uglFvmuXerWDbNZuwx7ZJvvblKrMgMYcCr6r+un62yfkhx4OjjyuaAdFjSo40qpalR5QUMlqM+5xBERcw4+GOQ==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-arm64.v3.1.32", "id": "Microsoft.NETCore.App.Host.linux-musl-arm64", "version": "3.1.32", "sha512": "sha512-8MAEJqAVpNSU/w0qKZFHvdweNdcIht3g0Of3gTEVqyR0R2ovNHCenSSfo5kAS8hfVZ1oxiEdTNdHrKmwq3vvRA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.osx-x64.v3.1.32", "id": "Microsoft.NETCore.App.Host.osx-x64", "version": "3.1.32", "sha512": "sha512-vV19A5M60cxvdRM3ZabhPjI6lz2svjXtbyD3n0lRz0FzxvztP4Vvf0nH1FXzwDVm/ydNL7UN3tlj62XjdNfKjQ==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-x64.v3.1.32", "id": "Microsoft.NETCore.App.Host.win-x64", "version": "3.1.32", "sha512": "sha512-p9nogZAnicSfXmfpDCBlNJbszywmLhbV6/IbcK4qB4gb+9AF46OOnSVzMc2BVZmPsLfkQtSFVlG/chdttCqD9A==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-arm64.v3.1.32", "id": "Microsoft.NETCore.App.Host.win-arm64", "version": "3.1.32", "sha512": "sha512-DswXqix50wAEPlovKVJ1VbPx+tYwXtwdh6zkpzGkq+Qn27Axs2iNUXdKffBjZsDBjeGavb7AEWYMrBz98a/5uA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-x64.v5.0.17", "id": "Microsoft.NETCore.App.Host.linux-x64", "version": "5.0.17", "sha512": "sha512-3x4x8sACczUaRusJAfZ8uG+lGxDSeeqb0d6PekygzgT44lQhaXKKof8yji3X4xH1JqHnprv1faChuZkD54OYNg==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-arm64.v5.0.17", "id": "Microsoft.NETCore.App.Host.linux-arm64", "version": "5.0.17", "sha512": "sha512-/ytwOp85R5T/NTSmBL51+GlytssrC2Ov7CgZPJIWj/9u8pPI6unO1UZ219MrDZttGUWP1pHm7kJ7XaKbifjHlg==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-x64.v5.0.17", "id": "Microsoft.NETCore.App.Host.linux-musl-x64", "version": "5.0.17", "sha512": "sha512-LY6e3dnNfEkk7mrDOxx0JY63sioI2xskstHwC1O2StNJ6QjVWE5i3xDPJl6s1DidACTvZvm16XDPqnR/cITNLg==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-arm64.v5.0.17", "id": "Microsoft.NETCore.App.Host.linux-musl-arm64", "version": "5.0.17", "sha512": "sha512-H9co6YngYniZfzz8XER87mkQ03h2R1eR8NYKNZL1jEVnFQYHvPRZqN6pEhIhGVx+RiKhKDEGdHORFVZDVhTFbw==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.osx-x64.v5.0.17", "id": "Microsoft.NETCore.App.Host.osx-x64", "version": "5.0.17", "sha512": "sha512-cW3IvuCZC4ULbzsA4A3FznaUTFNXOJNCUDfFn9eN/t6tjJZe70tI4WAc51GApa3wC/B7Sy/S7yRsH+m5fDnjzA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-x64.v5.0.17", "id": "Microsoft.NETCore.App.Host.win-x64", "version": "5.0.17", "sha512": "sha512-GjnT+8oke0YvrrbD2VlIcBmJ8HyqB0/zOpnNJ+f0dc0RzAQ/lSxCC7avT0Ly86as+zK5vU9TatXP++5VqspCZQ==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-arm64.v5.0.17", "id": "Microsoft.NETCore.App.Host.win-arm64", "version": "5.0.17", "sha512": "sha512-ibTt4do4+2H3pShc5cvk/u3SG5zeiXMwi3HvTRNMKfnjd+UIjf4w364tXNoEADHrWokdUOX37k5icLvqCIqqNA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-x64.v6.0.28", "id": "Microsoft.NETCore.App.Host.linux-x64", "version": "6.0.28", "sha512": "sha512-TbFlTZBow3//Xi/x17srAg5mGjlWw2uUPxrjSGuryPhRXgtv52soisZ8C9BZYLTb6O7UeDiQlLXPSo8M0SJ0EA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-arm64.v6.0.28", "id": "Microsoft.NETCore.App.Host.linux-arm64", "version": "6.0.28", "sha512": "sha512-Y6jWqYf7+OByPyXoC1EtR47jM7BHzaWi+hXIWqYOwVKKmk7Xg76RtTUBogadB7lXTQRefIfyjrdpyb5RscXeRA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-x64.v6.0.28", "id": "Microsoft.NETCore.App.Host.linux-musl-x64", "version": "6.0.28", "sha512": "sha512-gbG9jNbLRQxiRJqLquC6ENWnpx9KpSjCiz4r3RDRoFwt0h1h7lmjeY86A3siA8zSZD9/ZWxnJhJ68Sr2bQhwow==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-arm64.v6.0.28", "id": "Microsoft.NETCore.App.Host.linux-musl-arm64", "version": "6.0.28", "sha512": "sha512-9HGFHhyyj5ITWumA/IQrWR6qwHWR0hYuwyZxXR4ZKBKyQxedDZsFT+D/t1AQwPyeQyx6EmaUl7cd5ySht9H7Rg==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.osx-x64.v6.0.28", "id": "Microsoft.NETCore.App.Host.osx-x64", "version": "6.0.28", "sha512": "sha512-MEJB5al4h6eMrjyOT0sx7AiLYFqPf2x1DFnmcLpHQCRf45ZRE/HWjMc3le681Ygvt9F5QX7oGQKRH9Z3D3ckWw==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.osx-arm64.v6.0.28", "id": "Microsoft.NETCore.App.Host.osx-arm64", "version": "6.0.28", "sha512": "sha512-7jRowpiW573pInKSbWK5jvHSMTFvmRZ7r/l0AiVOCwp2b1EOFtCLrJDcEbs4r/tx2fTBjVjTDQ5aT+niQUhk0w==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-x64.v6.0.28", "id": "Microsoft.NETCore.App.Host.win-x64", "version": "6.0.28", "sha512": "sha512-tA94VL7eb4h4MOHy2rthhnPYUV9Dtnw2VeP5xFRxA8Rpsi5fDhR/79Q5P+RuF2Jml9fwoNKaMQ6jxQWaIgf+wQ==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-arm64.v6.0.28", "id": "Microsoft.NETCore.App.Host.win-arm64", "version": "6.0.28", "sha512": "sha512-ny06bI55JoGI1SEyYXPjwgRqEPiPlvcz1nGZETwtjadwGg4XlD8nYwtqak2zLSQBKO+BMZ3CtkSEOyP65sHj0A==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-x64.v7.0.17", "id": "Microsoft.NETCore.App.Host.linux-x64", "version": "7.0.17", "sha512": "sha512-mAoME1kKZLrqJtxdcLY7VZZlRL8CWWsNkk1q4D8zumpuTSuB3/AvEdZ7rlnVUndWIB5SVv+l9mxOu6oIFMn8vw==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-arm64.v7.0.17", "id": "Microsoft.NETCore.App.Host.linux-arm64", "version": "7.0.17", "sha512": "sha512-IgVZHEcjg8TL73xcNdj1qM7vmhwNzF4EZgOsQd7ruQX7NciUF7rseBmxS9bZYlthF73KAK1VnPAK2PRgnFqalA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-x64.v7.0.17", "id": "Microsoft.NETCore.App.Host.linux-musl-x64", "version": "7.0.17", "sha512": "sha512-hG4CNgp5fZj9nmx2P7ZIYIjYxJFWcKQo2uQ6tkL/IazkrYwGvBjF52bU5WCZIwfk/MIwoiKVKWh4MihNOCI/yQ==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-arm64.v7.0.17", "id": "Microsoft.NETCore.App.Host.linux-musl-arm64", "version": "7.0.17", "sha512": "sha512-FRDb8epYZ6sAfMf4NUhvDO/0IJelu8IvjR1w9DTaKYanaY2HLksMiXUDhNyjkTM45wHfePWu20+N9oqb7YBSjQ==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.osx-x64.v7.0.17", "id": "Microsoft.NETCore.App.Host.osx-x64", "version": "7.0.17", "sha512": "sha512-ZKN9JsqzPCbF1r0F6Um2gvaBbEgaErQQ5yUYAscKadXylogCPnO3eTRb69z5bxLQdnru+NGMJ1fhd5+MDcRD1Q==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.osx-arm64.v7.0.17", "id": "Microsoft.NETCore.App.Host.osx-arm64", "version": "7.0.17", "sha512": "sha512-J3HkImlFu6U6pBNX3yj1dkx29FV9iiHKgV+ePimT/YgwQFfIcxT874EuJxOvhd2uKbsGqgmpj5nBkURnY/gAaw==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-x64.v7.0.17", "id": "Microsoft.NETCore.App.Host.win-x64", "version": "7.0.17", "sha512": "sha512-Ns23KKE07LfqfzghWyd+DGTY/zf5EB9qj3cluFOuNWJ8d15Uffh89uKS4K/p940Wzpql4d2Bvu7mbP5L9V9JAQ==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-arm64.v7.0.17", "id": "Microsoft.NETCore.App.Host.win-arm64", "version": "7.0.17", "sha512": "sha512-Wmf0oefdvcV+HESw8GlGrF2z511NER0ckIkuT4uZ861ZDefAoxmfJv2w6TVowAV1CAYOH60mt8yN/xqRUwm3pA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-x64.v8.0.3", "id": "Microsoft.NETCore.App.Host.linux-x64", "version": "8.0.3", "sha512": "sha512-G4o9Ih9kVUJNoCGDLGGKBOMuKiRDhowuWUnzqFTcy8viZ/ZgvzFGXzEr3P8xRsa3/T0qIZ+5qQCqhe7+dgXa8A==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-arm64.v8.0.3", "id": "Microsoft.NETCore.App.Host.linux-arm64", "version": "8.0.3", "sha512": "sha512-gKz5NE5xo9pruoe1K2pRmtCxTV3j1X6nhRfNmYMPk25uZJJMlXhjE4HuZez08p4T04z/XGuWQu8PSFOIVXUUgw==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-x64.v8.0.3", "id": "Microsoft.NETCore.App.Host.linux-musl-x64", "version": "8.0.3", "sha512": "sha512-ychlRX0pN0rrnJ2svau28Mho1fa4oVcK86M45tF432llzB0GItVdnsH12tp0iCI+y3Id2LoYroTQPuW0pdlO8A==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.linux-musl-arm64.v8.0.3", "id": "Microsoft.NETCore.App.Host.linux-musl-arm64", "version": "8.0.3", "sha512": "sha512-fS1jmasVgjGkUTx9z/vLdDOeRAbjWv1Zoib6E8GZZAk3ldCHm4BV9jpQCFisVD5NpCe/+iOo+/9dpojYjEUEdA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.osx-x64.v8.0.3", "id": "Microsoft.NETCore.App.Host.osx-x64", "version": "8.0.3", "sha512": "sha512-LrfJ8JM8zsqK1XeJ6oRzAeiek1n0y7I5J6xKdcaWTW1sMtm71ynoP5TB4uJpPl5meRhDstiSiyK2HfQJuxr2QA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.osx-arm64.v8.0.3", "id": "Microsoft.NETCore.App.Host.osx-arm64", "version": "8.0.3", "sha512": "sha512-zqw7Ggssv8tHA8tB1XR0CzpYpRqzSIEA9dRaFKHDzBFZI17T0uLdCKnLqII8AtOVVQ0HEht6ZOR5DaQUtQ+pvQ==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-x64.v8.0.3", "id": "Microsoft.NETCore.App.Host.win-x64", "version": "8.0.3", "sha512": "sha512-g2vmpZ7HTbKdtXgQch/puL9wTtiSgcbxYR09EofwkRmdVhY6KTNV6emxmUlj60YC8YsJyGhfAGxP0R+e+0oxVA==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
            {"name": "microsoft.netcore.app.host.win-arm64.v8.0.3", "id": "Microsoft.NETCore.App.Host.win-arm64", "version": "8.0.3", "sha512": "sha512-rOwbb11nYQr2OtYbjFw2AwEz1ohRqXEkhVCsIQ/jg/8OL/meNjFFc5bUYe8vRk1F3DOZWCUyqd4wcWcus6hthQ==", "sources": ["https://api.nuget.org/v3/index.json"], "dependencies": {}, "targeting_pack_overrides": [], "framework_list": []},
        ],
    )
