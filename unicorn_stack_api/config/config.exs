# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :unicorn_stack_api,
  ecto_repos: [UnicornStackApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :unicorn_stack_api, UnicornStackApiWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [json: UnicornStackApiWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: UnicornStackApi.PubSub,
  live_view: [signing_salt: "OI9oxrgr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"