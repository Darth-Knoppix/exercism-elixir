defmodule Bob do
  defp question?(input) do
    String.last(input) == "?"
  end

  defp shouting?(input) do
    input == String.upcase(input) and input != String.downcase(input)
  end

  defp silence?(input) do
    input |> String.trim() |> String.length() == 0
  end

  def hey(input) do
    cond do
      silence?(input) ->
        "Fine. Be that way!"

      question?(input) and shouting?(input) ->
        "Calm down, I know what I'm doing!"

      input |> question? ->
        "Sure."

      input |> shouting? ->
        "Whoa, chill out!"

      true ->
        "Whatever."
    end
  end
end
