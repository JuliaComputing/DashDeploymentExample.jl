using DashDeploymentExample
using Documenter

DocMeta.setdocmeta!(DashDeploymentExample, :DocTestSetup, :(using DashDeploymentExample); recursive=true)

makedocs(;
    modules=[DashDeploymentExample],
    authors="JuliaHub, Inc.",
    repo="https://github.com/juliacomputing/DashDeploymentExample.jl/blob/{commit}{path}#{line}",
    sitename="DashDeploymentExample.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://juliacomputing.github.io/DashDeploymentExample.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/juliacomputing/DashDeploymentExample.jl",
)
