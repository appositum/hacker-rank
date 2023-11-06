defmodule GCD do
  def main do
    [a, b] = IO.gets("")
    |> String.split()
    |> Enum.map(&String.to_integer/1)

    IO.puts calc(a, b)
  end

  def calc(a, b) do
    if b == 0, do: a, else: round calc(b, :math.fmod(a, b))
  end
end

GCD.main()
