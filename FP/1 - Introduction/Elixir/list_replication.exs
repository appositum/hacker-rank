defmodule Solution do
  def replicate do
    {n, _} = IO.gets("") |> Integer.parse()

    IO.read(:stdio, :all)
    |> String.split()
    |> Enum.map(&(List.duplicate(&1, n)))
    |> List.flatten()
    |> Enum.map(&(String.to_integer &1))
  end
end

Solution.replicate() |> Enum.each(&(IO.puts &1))
