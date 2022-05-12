defmodule Earth.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    Earth.start()
    topologies = Application.get_env(:libcluster, :topologies)

    children = [
      {Cluster.Supervisor, [topologies, [name: Zetty.ClusterSupervisor]]},
      {Earth.Relay, []}
    ]

    opts = [strategy: :one_for_one, name: Earth.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
