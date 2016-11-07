defmodule Flatten do

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
