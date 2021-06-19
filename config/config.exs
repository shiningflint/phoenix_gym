# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gym,
  ecto_repos: [Gym.Repo]

# Configures the endpoint
config :gym, GymWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XQohRueK/pG5bABJ2qt878MzvTdZfEDYEQBvuLbWxAgLbyrkzC3nCseR42sbuxuV",
  render_errors: [view: GymWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Gym.PubSub,
  live_view: [signing_salt: "wUww85er"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
