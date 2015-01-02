defmodule Geom do
  def area(areatype, num1, num2) when num1 > 0 and num2 > 0 do
    case areatype do
      :rectangle -> num1 * num2
      :triangle -> num1 * num2 / 2.0
      :ellipse -> :math.pi() * num1 * num2
      _ -> 0
    end
  end

end
