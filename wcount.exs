filename = String.trim(IO.gets("File to count: "))
words = String.split(File.read!(filename), ~r{(\\n|[^\w'])+})
IO.inspect(words)
words |> Enum.count() |> IO.puts()
