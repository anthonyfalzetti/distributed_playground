defmodule Moon do
  @moduledoc """
  Documentation for `Moon`.
  """

  require Logger

  def warn(), do: Logger.warn(Faker.StarWars.quote())
  def info(), do: Logger.info(Faker.StarWars.quote())
  def debug(), do: Logger.debug(Faker.StarWars.quote())
  def error(), do: Logger.error(Faker.StarWars.quote())

  def random() do
    level = Enum.random([:warn, :info, :debug, :error])
    apply(__MODULE__, level, [])
  end
end
