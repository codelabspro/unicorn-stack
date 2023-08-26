defmodule IsometricApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      IsometricApiWeb.Telemetry,
      # Start the Ecto repository
      IsometricApi.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: IsometricApi.PubSub},
      # Start the Endpoint (http/https)
      IsometricApiWeb.Endpoint
      # Start a worker by calling: IsometricApi.Worker.start_link(arg)
      # {IsometricApi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: IsometricApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    IsometricApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
