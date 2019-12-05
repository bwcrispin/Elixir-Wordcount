defmodule WordcountTest do
  use ExUnit.Case
  doctest Wordcount

  test "run Wordcount" do
    assert Wordcount.load("test.txt") == 5
  end

  test "run Wordcount 2" do
    assert Wordcount.load("nowords.txt") == 34
  end
end
