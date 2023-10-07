defmodule Temp2 do

  def hello() do
   IO.puts("What a cutie! Do you have a name?")
   name = IO.gets("Input your name here: ") |> String.trim()
   hey(name)
  end

  defp hey(name) do
    case name do
      "Eniya" ->
        IO.puts("Heey, You are literally a GOD!")
      "Roman" ->
        IO.puts("Oh, Roman, it's you! Glad to see you here")
      "Poo" ->
        IO.puts("Poo is not a legal name, badass")
      _ ->
        IO.puts("Awww, #{name}! Glad you are here")
    end
  end
end
