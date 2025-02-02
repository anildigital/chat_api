# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chat_api,
  ecto_repos: [ChatApi.Repo]

# Configures the endpoint
config :chat_api, ChatApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "intxbtxVIspdRN/EH17iJtVfllDkbTas07uJ+HGj65GnkxuoDH9/Hu+JSPrUiTAa",
  render_errors: [view: ChatApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ChatApi.PubSub,
  live_view: [signing_salt: "io864Ekj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :ejabberd,
  file: "config/ejabberd.yml",
  log_path: "logs/ejabberd.log"

config :mnesia,
  dir: "mnesiadb/"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
