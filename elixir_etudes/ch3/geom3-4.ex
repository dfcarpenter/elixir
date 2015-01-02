defmodule GeomTuple do
  @moduledoc """
  Module for dealing with area functions
  """

  def area({areatype, num1, num2}) when num1 > 0 and num2 > 0 do
      area(areatype,num1, num2)
  end

    defp area(:rectangle, length, width) do
      length * width
    end

    defp area(:triangle, base, height) do
      base * height / 2.0
    end

    defp area(:ellipse, num1, num2) do
      :math.pi() * num1 * num2
    end

    defp area(_,_,_) do
      0
    end
end
