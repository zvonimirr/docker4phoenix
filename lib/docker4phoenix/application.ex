defmodule Docker4phoenix.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Docker4phoenix.Repo,
      # Start the Telemetry supervisor
      Docker4phoenixWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Docker4phoenix.PubSub},
      # Start the Endpoint (http/https)
      Docker4phoenixWeb.Endpoint
      # Start a worker by calling: Docker4phoenix.Worker.start_link(arg)
      # {Docker4phoenix.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Docker4phoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Docker4phoenixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
