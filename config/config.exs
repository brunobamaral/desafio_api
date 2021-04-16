# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

# Configure Mix tasks and generators
config :desafio_api,
  ecto_repos: [DesafioApi.Repo]

config :desafio_api_web,
  ecto_repos: [DesafioApi.Repo],
  generators: [context_app: :desafio_api, binary_id: true]

# Configures the endpoint
config :desafio_api_web, DesafioApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Tc5nniMSMq0DoIZe1H/h47amR2KA8MHmviG3KinUySyN9HWJQRtIDM2R3GPiS475",
  render_errors: [view: DesafioApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: DesafioApi.PubSub,
  live_view: [signing_salt: "ANA5zQHI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
