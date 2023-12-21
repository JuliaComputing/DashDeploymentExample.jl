using DashJuliaHubExample
using Documenter

DocMeta.setdocmeta!(DashJuliaHubExample, :DocTestSetup, :(using DashJuliaHubExample); recursive=true)

makedocs(;
    modules=[DashJuliaHubExample],
    authors="Steve Kelly <kd2cca@gmail.com> and contributors",
    repo="https://github.com/juliacomputing/DashJuliaHubExample.jl/blob/{commit}{path}#{line}",
    sitename="DashJuliaHubExample.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://juliacomputing.github.io/DashJuliaHubExample.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/juliacomputing/DashJuliaHubExample.jl",
)
