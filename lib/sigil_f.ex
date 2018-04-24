defmodule SigilF do
  @moduledoc """
  Logger friendly sigil
  """

  @doc ~S"""
  make `fn/0` that returns given string

  # Example

      iex> import SigilF
      iex> fun = ~f"Hello #{1 + 1}"
      iex> fun.()
      "Hello 2"
  """
  defmacro sigil_f(term, mod) do
    build_f(term, mod)
  end

  defmacro sigil_F(term, mod) do
    build_f(term, mod)
  end

  defp build_f(term, [?o]) do
    quote do
      val = unquote(term)
      fn -> val end
    end
  end

  defp build_f(term, _mod) do
    quote do
      fn -> unquote(term) end
    end
  end
end
