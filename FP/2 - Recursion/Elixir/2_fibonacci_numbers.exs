defmodule Solution do
  def main do
    {n, _} = IO.gets("") |> Integer.parse()
    IO.puts fib(n)
  end

  def fib(1), do: 0
  def fib(2), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)
end

Solution.main()
