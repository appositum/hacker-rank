defmodule Solution do
  def main do
    a = get_integer()
    b = get_integer()
    a + b
  end

  def get_integer do
    {n, _} = IO.gets("") |> Integer.parse()
    n
  end
end

IO.puts Solution.main()
