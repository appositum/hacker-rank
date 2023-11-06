defmodule Solution do
  def main do
    IO.read(:stdio, :all)
    |> String.split()
    |> Enum.map(&(String.to_integer &1))
    |> update()
  end

  def update(lst) do
    lst
    |> Enum.map(&(abs &1))
  end
end

Solution.main()
|> Enum.each(&(IO.puts &1))
