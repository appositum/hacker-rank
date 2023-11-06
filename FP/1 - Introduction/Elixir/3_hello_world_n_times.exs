defmodule Solution do
  def hello_world(n) do
    "Hello World\n"
    |> String.duplicate(n)
    |> String.trim()
  end
end

{n, _} = IO.gets("") |> Integer.parse()
IO.puts Solution.hello_world(n)
