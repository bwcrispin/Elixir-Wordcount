defmodule Wordcount do
  @moduledoc """
    Program to take a file and produce the number of words in the file.  
  """

  @doc """
    Takes a `filename` provided and, if the filename is in the directory, counts the words in the document.  If the file does not exist, it will display that to the user. The example used below is to show the function being used with the test file provided and the number of words in the document.  The `File.read!()` after is to show there are five words in the test document.

  ## Examples

      iex> Wordcount.load("test.txt")
      5
      iex> File.read!("test.txt")
      "Hello World!  Let's try this!"

  """
  def load(filename) do
    case File.read(filename) do
      {:ok, contents} ->
        String.split(contents, ~r{(\\n|[^\w'])+})
        |> Enum.filter(fn x -> x != "" end)
        |> Enum.count()
      {:error, _reason} ->
        "That file doesn't exist"
    end
  end
end
