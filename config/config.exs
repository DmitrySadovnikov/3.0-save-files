# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :purple_performance,
  ecto_repos: [PurplePerformance.Repo]

# Configures the endpoint
config :purple_performance, PurplePerformance.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OjYRD9AKjz6GC0k6av4Q4BK5/+VbIzkJfjoTMbj7Q4gbaKYF50mW/hbCS2jKUSLi",
  render_errors: [view: PurplePerformance.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PurplePerformance.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :facebook,
       app_id: System.get_env("FACEBOOK_APP_ID"),
       app_secret: System.get_env("FACEBOOK_APP_SECRET"),
       app_access_token: System.get_env("FACEBOOK_APP_ACCESS_TOKEN"),
       graph_url: "https://graph.facebook.com/v2.11",
       graph_video_url: "https://graph-video.facebook.com/v2.8"


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
