defmodule Moon.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    topologies = Application.get_env(:libcluster, :topologies)

    children = [
      {Cluster.Supervisor, [topologies, [name: Zetty.ClusterSupervisor]]},
      {Moon.LoggingMocker, []}
    ]

    opts = [strategy: :one_for_one, name: Moon.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
