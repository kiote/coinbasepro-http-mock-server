defmodule CoinbaseProHttpMockServerTest do
  use ExUnit.Case
  doctest CoinbaseProHttpMockServer

  test "greets the world" do
    assert CoinbaseProHttpMockServer.hello() == :world
  end
end
