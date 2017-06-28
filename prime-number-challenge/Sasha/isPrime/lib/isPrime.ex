defmodule IsPrime do

  def test(testingNumber) when testingNumber <= 1 do
    false
  end

  def test(2) do
    true
  end

  def test(testingNumber) when is_integer(testingNumber) do
    # since any numbers greater than half the testingNumber can't return a whole number
    # we can ignore these.
    endNumber = round(testingNumber / 2)

    Enum.map(2..endNumber, (fn (x) -> rem(testingNumber, x) end))
    |> Enum.filter(fn (rem) -> rem == 0 end)
    |> length == 0
  end

  def test(nonInteger) do
    IO.puts "#{nonInteger} is not an integer"
    false
  end
end

