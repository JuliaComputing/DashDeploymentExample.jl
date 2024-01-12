using DashJuliaHubExample

@info "Setup and now serving..."
# Heroku passes the port as the first argument; JuliaHub as a PORT ENV var
port = something(tryparse(Int, get(ARGS, 1, "")), tryparse(Int, get(ENV, "PORT", "")), 8080)
DashJuliaHubExample.main(;port)