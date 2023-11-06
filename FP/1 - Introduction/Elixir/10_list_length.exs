defmodule Solution do
  def main do
    IO.read(:stdio, :all)
    |> String.split()
    |> len()
  end

  def len(lst) do
    Enum.reduce(lst, 0, fn(_, acc) -> acc+1 end)
  end
end

IO.puts Solution.main()
