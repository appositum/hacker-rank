defmodule Solution do
  def main do
    IO.read(:stdio, :all)
    |> String.split()
    |> Enum.map(&(String.to_integer &1))
    |> reverse()
  end

  def reverse(lst) do
    List.foldl(lst, [], fn (x, acc) -> [x | acc] end)
  end
end

Solution.main() |> Enum.each(&(IO.puts &1))
