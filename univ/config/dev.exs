use Mix.Config

config :univ, Univ.Repo,
  username: "someuser",
  password: "userpass",
  database: "databasename",
  hostname: "localhost",
  port: "5435",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
