defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  def upcase_first(string) do
    string
      |> String.first
      |> String.upcase
  end

  def split_title(string) do
    string
      |> String.split(~r/(?=[A-Z])/, trim: true)
  end

  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string
      |> String.split
      |> Enum.flat_map(fn x -> split_title(x) end)
      |> Enum.map(fn x -> upcase_first(x) end)
      |> List.to_string
  end
end
