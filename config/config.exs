# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blog_app,
  ecto_repos: [BlogApp.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :blog_app, BlogAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n4dFZBzmUXiUeRVUWX7mXQR7h8Wv4NG1aJPslr1C9CL+LCluAOgTbgamjZS/gque",
  render_errors: [view: BlogAppWeb.ErrorView, accepts: ~w(json), layout: false],
  debug_errors: false,
  pubsub_server: BlogApp.PubSub,
  live_view: [signing_salt: "f7spXh9o"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
