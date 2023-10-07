defmodule Temp1 do
  #between low and high -> guess the middle
  #tell user a guess
  # 'yes' -> game over
  # 'bigger' -> bigger(low, high)
  # 'smaller' -> smaller(low, high)
  # anything else -> tell to enter a valid number
  def guess(low, high) do
    mid = div(low + high, 2) # Calculate the middle value
    IO.puts("Can it be #{mid}?") # Tell the user the guess

    case IO.gets("> ") |> String.trim() do  # Get user input
      "yes" ->
        IO.puts("That was pretty easy!")
      "bigger" ->
        guess(mid+1, high) # Recurse with a new lower bound
      "smaller" ->
        guess(low, mid-1) # Recurse with a new upper bound
      _ ->
        IO.puts("Maybe you will enter a valid command? It's easy: 'yes', 'bigger', or 'smaller'.")
        guess(low, high) # Recurse with the same bounds
    end
  end
end
