defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "should return the correct tuple" do
    assert FizzBuzz.build("numbers.txt") == {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}
  end
end
