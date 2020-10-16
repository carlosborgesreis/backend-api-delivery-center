# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :backend_api_delivery_center,
  ecto_repos: [BackendApiDeliveryCenter.Repo]

# Configures the endpoint
config :backend_api_delivery_center, BackendApiDeliveryCenterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "W4lsHPl8a5+cx6fOF1CDAEEw24D7w+Wo+kiZaeXAGaGGPL5rq91V6pKDKdMAWlky",
  render_errors: [view: BackendApiDeliveryCenterWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BackendApiDeliveryCenter.PubSub,
  live_view: [signing_salt: "pvnpZ/h7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
