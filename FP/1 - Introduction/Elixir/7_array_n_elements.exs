defmodule Solution do
  def range do
    {n, _} = IO.gets("") |> Integer.parse()
    Enum.to_list(0..n-1)
  end
end

Solution.range() |> IO.inspect(limit: :infinity)
