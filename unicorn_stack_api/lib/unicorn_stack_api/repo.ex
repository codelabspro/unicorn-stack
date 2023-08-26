defmodule UnicornStackApi.Repo do
  use Ecto.Repo,
    otp_app: :unicorn_stack_api,
    adapter: Ecto.Adapters.Postgres
end
