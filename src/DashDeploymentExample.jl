module DashDeploymentExample

using Dash
using Sockets

function main(port)
    app = dash(requests_pathname_prefix="/proxy/$port/")

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
    app
end

end
