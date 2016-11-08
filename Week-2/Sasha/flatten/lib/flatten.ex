defmodule Flatten do

  @moduledoc ~S"""
  Functions associated with flattening a nested list

  For a list of callable functions see Flatten.\_\_info\_\_(:functions)
  """

  @doc """
  Flatten a nested list to a single level list.

  ## Examples:
  iex> Flatten.list [1, 2, 3, 4]
  [1, 2, 3, 4]

  iex> Flatten.list [1, 2, 3, [4, 5, [6, 7, 8]]]
  [1, 2, 3, 4, 5, 6, 7, 8]

  iex> Flatten.list ["sasha", ["yee", [30, ["parramatta"]]]]
  ["sasha", "yee", 30, "parramatta"]
  """
  def list([]) do
    []
  end

  def list([head | tail]) do
    list(head) ++ list(tail)
  end

  def list(head) when is_list head do
    head
  end

  def list(head) do
    [head]
  end

end
