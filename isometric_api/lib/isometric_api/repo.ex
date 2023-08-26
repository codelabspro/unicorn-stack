defmodule IsometricApi.Repo do
  use Ecto.Repo,
    otp_app: :isometric_api,
    adapter: Ecto.Adapters.Postgres
end
