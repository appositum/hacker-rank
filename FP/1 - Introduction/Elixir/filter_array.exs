defmodule Solution do
  def filter_array do
    {delimiter, _} = IO.gets("") |> Integer.parse()

    IO.read(:stdio, :all)
    |> String.split()
    |> Enum.map(&(String.to_integer &1))
    |> Enum.filter(&(&1 < delimiter))
  end
end

Solution.filter_array() |> Enum.each(&(IO.puts &1))
