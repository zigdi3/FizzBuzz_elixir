defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provide, return the converted list" do
      expected_response = {:ok, [1, 2, 3, :buzz, 10, :buzz, 18, :buzz, :fizzbuzz]}
      assert FizzBuzz.build("numbers.txt") == expected_response
    end
    test "when a invalid file is provide, return error message" do
      expected_response = {:error, "Erro ao ler arquivo: enoent"}
      assert FizzBuzz.build("number.txt") == expected_response
    end
  end 
end
