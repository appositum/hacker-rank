defmodule Solution do
  def main do
    IO.read(:stdio, :all)
    |> String.split()
    |> Enum.map(&(String.to_integer &1))
    |> filter_positions()
  end

  def filter_positions(lst) do
    :lists.seq(1, length(lst)-1, 2)
    |> Enum.map(fn x -> Enum.at(lst, x) end)
  end
end

Solution.main()
|> Enum.each(&(IO.puts &1))
