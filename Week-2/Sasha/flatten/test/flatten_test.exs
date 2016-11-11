defmodule FlattenTest do
  use ExUnit.Case
  doctest Flatten

  test "empty list" do
    assert Flatten.list([]) == []
  end

  test "not a list" do
    assert Flatten.list("abc") == ["abc"]
    assert Flatten.list(1) == [1]
  end

  test "flatten basic list" do
    assert Flatten.list([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
  end

  test "flatten more complex list" do
    assert Flatten.list([1, [2, 3]]) == [1, 2, 3]
  end

  test "flatten mixed lists" do
    assert Flatten.list([[1, 2, 3], [4], [5, 6, 7]]) == [1, 2, 3, 4, 5, 6, 7]
  end

  test "mixed input" do
    assert Flatten.list([["one"], [31], [33.33333]]) == ["one", 31, 33.33333]
  end

end
