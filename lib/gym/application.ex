defmodule Gym.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Gym.Repo,
      # Start the Telemetry supervisor
      GymWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Gym.PubSub},
      # Start the Endpoint (http/https)
      GymWeb.Endpoint
      # Start a worker by calling: Gym.Worker.start_link(arg)
      # {Gym.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Gym.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    GymWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
