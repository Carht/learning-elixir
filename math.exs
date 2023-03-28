defmodule Math do
  def sum(a, b) do
    sump(a, b)
  end

  defp sump(a, b) do
    a + b
  end

  # Guards
  def zero?(0) do
    true
  end

  def zero?(x) when is_integer(x) do
    false
  end
end

IO.puts Math.sum(1, 2)

# Error example
#IO.puts Math.sump(1, 2) => Error

IO.puts Math.zero?(0)
IO.puts Math.zero?(1)

# Error examples
#IO.puts Math.zero?([1, 2, 3])
#IO.puts Math.zero?(0.0)
