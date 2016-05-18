# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the namespace used by Phoenix generators
config :dj_funtime,
  app_namespace: DJFuntime

# Configures the endpoint
config :dj_funtime, DJFuntime.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "uUnzftEDy9ks0pgTniYDjJ5skSL6n+ZzT4xbo/lEueh6RaQiToYU/MVQHNs9iUDB",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: DJFuntime.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
