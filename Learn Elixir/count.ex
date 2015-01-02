defmodule Count do

  @doc """
  countsdown from a number greater than 0
  """

  def countdown(from) when from > 0 do
    IO.inspect(from)
    countdown(from-1)
  end


  def countdown(from) do
    IO.puts("blastoff!")
  end

  @doc """
  countsup to a limit. Using guards rather than if blocks
  """

  def countup(limit) do
    countup(1,limit)
  end

  defp countup(count, limit) when count <= limit do
    IO.inspect(count)
    countup(count+1, limit)
  end

  defp countup(count, limit) do
    IO.puts("Finished!")
  end


end
