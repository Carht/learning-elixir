defmodule Univ.Repo do
  use Ecto.Repo,
    otp_app: :univ,
    adapter: Ecto.Adapters.Postgres
end
