# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bookbudget,
  ecto_repos: [Bookbudget.Repo]

# Configures the endpoint
config :bookbudget, BookbudgetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AiT33cwPS5ogXvpFZwO528jxdUfGThsjnXRv47bimdKxkm+VAhG05zfbSA5eCFT6",
  render_errors: [view: BookbudgetWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bookbudget.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :stellar, network: :test
