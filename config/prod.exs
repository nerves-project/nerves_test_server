use Mix.Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :nerves_test_server, NervesTestServerWeb.Endpoint,
  load_from_system_env: true,
  http: [port: {:system, "PORT"}],
  server: true,
  secret_key_base: "${SECRET_KEY_BASE}",
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json",
  secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE")

# Do not print debug messages in production
config :logger, level: :debug
