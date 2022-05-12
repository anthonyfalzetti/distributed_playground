defmodule Earth.Relay do
  use GenServer

  # Client

  def start_link(default) when is_list(default) do
    GenServer.start_link(__MODULE__, default, name: __MODULE__)
  end

  # Server
  @impl true
  def init(initial_state) do
    {:ok, initial_state}
  end
end
