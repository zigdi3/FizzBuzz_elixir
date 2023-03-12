defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FizzBuzz.hello()
      :world

  """
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

    defp handle_file_read( {:ok, result}) do
      result =
      result
      |>String.split(",")
      |> Enum.map(&convert_and_update/1)
    {:ok, result}
    end

    defp handle_file_read(  {:error, reason}), do: {:error, "Erro ao ler arquivo: #{reason}"}

    defp convert_and_update(elem) do
      number = String.to_integer(elem)
      evaluate_number(number)
    end

    defp evaluate_number(number) when rem(number, 4) == 0 and rem(number, 7) == 0, do: :fizzbuzz
    defp evaluate_number(number) when rem(number, 4) == 0, do: :fizz
    defp evaluate_number(number) when rem(number, 7) == 0, do: :buzz
    defp evaluate_number(number),  do: number

 end
