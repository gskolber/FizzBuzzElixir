defmodule FizzBuzz do
  @doc """
  Hello world.

  ## Examples

      iex> FizzBuzz.build("numbers.txt")
      {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}

  """
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    result =
      result
      |>String.split(",")
      |>Enum.map(&convert_and_verify/1)

      {:ok , result}

  end

  defp handle_file_read({:error, reason}), do: {:error,"Error reading the file: #{reason}"}

  defp convert_and_verify(value) do
    value
    |>String.to_integer()
    |>evaluate_fizz_buzz()
  end

  defp evaluate_fizz_buzz(number) when rem(number,3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_fizz_buzz(number) when rem(number,3) == 0, do: :fizz
  defp evaluate_fizz_buzz(number) when rem(number,5) == 0, do: :buzz
  defp evaluate_fizz_buzz(number), do: number


end
