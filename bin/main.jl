using Dash

# Enter 9999 in the port field in the deploy form when deploying on JuliaHub
const PORT = 9999

const DEV_MODE = haskey(ENV, "VSCODE_PROXY_URI")

function run_app(host="0.0.0.0", port=PORT)
    @info("Initializing dash...")
    app = dash(;
        requests_pathname_prefix=(DEV_MODE ? "/proxy/$(string(port))/" : "/"),
    )

    app.layout = html_div() do
        html_h1("Hello Dash"),
        html_div("Dash.jl: Julia interface for Dash"),
        dcc_graph(;
            id="example-graph",
            figure=(
                data=[
                    (x=[1, 2, 3], y=[4, 1, 2], type="bar", name="SF"),
                    (x=[1, 2, 3], y=[2, 4, 5], type="bar", name="Montréal"),
                ],
                layout=(title="Dash Data Visualization",),
            ),
        )
    end

    @info("Starting server...")
    run_server(app, host, port; debug=DEV_MODE)
end

run_app()