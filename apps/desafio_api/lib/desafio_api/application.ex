defmodule DesafioApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      DesafioApi.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: DesafioApi.PubSub}
      # Start a worker by calling: DesafioApi.Worker.start_link(arg)
      # {DesafioApi.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: DesafioApi.Supervisor)
  end
end
