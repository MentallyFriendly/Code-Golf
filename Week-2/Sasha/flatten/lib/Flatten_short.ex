defmodule F do
  def l([]), do: []
  def l([h|t]), do: l(h) ++ l(t)
  def l(h) when is_list h do h end
  def l(h), do: [h]
end
