defmodule Solution do
  def main do
    IO.read(:stdio, :all)
    |> String.split()
    |> Enum.map(&(String.to_integer &1))
    |> sum()
  end

  def sum(lst) do
    import Integer

    lst
    |> Enum.filter(&(is_odd &1))
    |> Enum.sum()
  end
end

IO.puts Solution.main()
