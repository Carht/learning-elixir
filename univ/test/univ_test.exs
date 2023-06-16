defmodule UnivTest do
  use ExUnit.Case
  doctest Univ

  test "greets the world" do
    assert Univ.hello() == :world
  end
end
