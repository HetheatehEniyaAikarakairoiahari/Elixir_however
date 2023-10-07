defmodule Tempname do
  # name input
  # responding about the name
  # case name is 'special' then give a spec answer
  def start do
   name = IO.gets("What a cutie! Do you have a name?\n")
   case String.trim(name) do
      "Eniya" -> "Heey, You are literally a GOD!"
      "Roman" -> "Oh, Roman, it's you! Glad to see you here"
      "Poo" -> "Poo is not a legal name, badass"
      "no" -> "Here is nothing to talk about with you then..."
      name -> "Awww, #{name}! Glad you are here"
    end
  end
end
