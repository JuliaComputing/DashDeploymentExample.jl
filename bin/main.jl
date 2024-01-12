using DashJuliaHubExample
using Sockets
using Dash

# Heroku passes the port as the first argument; JuliaHub as a PORT ENV var
port = something(tryparse(Int, get(ARGS, 1, "")), tryparse(Int, get(ENV, "PORT", "")), 8080)
app = DashJuliaHubExample.main()
@info Sockets.localhost
@info port
@info app
@info "Setup and now serving..."
Dash.run_server(app, Sockets.localhost, port)