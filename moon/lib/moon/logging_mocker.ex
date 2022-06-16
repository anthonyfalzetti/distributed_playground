defmodule Moon.LoggingMocker do
  use GenServer

  def start_link(args) do
    GenServer.start_link(__MODULE__, [], name: Keyword.get(args, :name, __MODULE__))
  end

  @impl true
  def init(_) do
    send(self(), :make_some_noise)
    {:ok, %{}}
  end

  def handle_info(:make_some_noise, state) do
    Moon.random()

    Process.send_after(self(), :make_some_noise, 1000)
    {:noreply, state}
  end
end
