defmodule Earth do
  @moduledoc """
  Documentation for `Earth`.
  """

  def start() do
    Node.start(:earth)
    cookie = Application.get_env(:earth, :cookie)
    Node.set_cookie(:"#{cookie}")
  end
end
