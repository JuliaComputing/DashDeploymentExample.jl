module DashJuliaHubExample

using Dash
using Sockets

function main(;host=Sockets.localhost, port=8080, debug=true)
    app = dash()

    app.layout = html_div() do
        html_h1("Hello Dash"),
        html_div("Dash.jl: Julia interface for Dash"),
        dcc_graph(id = "example-graph",
                figure = (
                    data = [
                        (x = [1, 2, 3], y = [4, 1, 2], type = "bar", name = "SF"),
                        (x = [1, 2, 3], y = [2, 4, 5], type = "bar", name = "Montréal"),
                    ],
                    layout = (title = "Dash Data Visualization",)
                ))
    end

    run_server(app, host, port; debug)
end

end
