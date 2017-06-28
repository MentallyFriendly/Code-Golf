defmodule MersenneTest do
  use ExUnit.Case
  doctest Mersenne

  test "mersenne 2" do
    assert Mersenne.generate(2) == 3
  end

  test "mersenne 10" do
    assert Mersenne.generate(10) == 1023
  end

  test "mersenne 100" do
    assert Mersenne.generate(100) == 1267650600228229401496703205375
  end

  test "mersenne 500" do
    assert Mersenne.generate(500) == 3273390607896141870013189696827599152216642046043064789483291368096133796404674554883270092325904157150886684127560071009217256545885393053328527589375
  end


end
