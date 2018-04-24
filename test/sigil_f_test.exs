defmodule SigilFTest do
  use ExUnit.Case, async: true
  doctest SigilF

  use Agent

  import SigilF

  test "sigil_f" do
    {:ok, num} = Agent.start_link(fn -> 0 end)

    inc = fn -> Agent.get_and_update(num, fn c -> {c, c + 1} end) end

    sf = ~f"count -> #{inc.()}"

    assert "count -> 0" == sf.()
    assert "count -> 1" == sf.()
    assert "count -> 2" == sf.()
  end

  test "sigil_f with o" do
    {:ok, num} = Agent.start_link(fn -> 0 end)

    inc = fn -> Agent.get_and_update(num, fn c -> {c, c + 1} end) end

    sf = ~f"count -> #{inc.()}"o

    assert "count -> 0" == sf.()
    assert "count -> 0" == sf.()
    assert "count -> 0" == sf.()
  end
end
