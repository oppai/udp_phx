# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :udp_phx, UdpPhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LqoRHgaoUEq2oyMk5FnvabisIC0Ch2KLWVwOg5qBLOmoJC25rSYWrukUoI3gaQZw",
  render_errors: [view: UdpPhxWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: UdpPhx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
