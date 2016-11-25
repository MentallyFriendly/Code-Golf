defmodule Mersenne do
  require Integer

  def generate(n) do
    pow(2, n) - 1
  end

  def pow(_, 0), do: 1
  def pow(x, n) when Integer.is_odd(n), do: x * pow(x, n - 1)
  def pow(x, n) do
    result = pow(x, div(n, 2))
    result * result
  end
end
