defmodule Drop do
  @doc """
  Calculates the velocity of an object falling on Earth
  as if it were in a vacuum.
  The distance is the height from which the object falls, specified
  in meters, and the function returns a velocity in meters per second.
  """

  def fall_velocity(planemo, distance) when distance
      >= 0 do
        gravity = case planemo do
          :earth -> 9.8
          :moon -> 1.6
          :mars -> 3.71
        end
      velocity = :math.sqrt(2 * gravity * distance)

      cond do
        velocity == 0 -> :stable
        velocity < 5 -> :slow
        velocity >= 5 and velocity < 10 -> :moving
        velocity >= 10 and velocity < 20 -> :fast
        velocity >= 20 -> :speedy
      end
  end



end
