use Mix.Config

config :univ,
  ecto_repos: [Univ.Repo]

import_config "#{Mix.env()}.exs"
