defmodule CoinbaseProHttpMockServer.ProductsHandlerTest do
  use ExUnit.Case
  import :meck
  import CoinbaseProHttpMockServer.ProductsHandler

  setup do
    new(:cowboy_req)
    new(JSX)
    on_exit(fn -> unload() end)
    :ok
  end

  test "returns prettified json" do
    expect(:cowboy_req, :parse_header, 2, :undefined)

    expect(JSX, :encode!, [
      {[
         [
           %{
             base_currency: "LINK",
             base_increment: "1",
             base_max_size: "800000",
             base_min_size: "1",
             cancel_only: false,
             display_name: "LINK/USDC",
             id: "LINK-USDC",
             limit_only: false,
             margin_enabled: false,
             max_market_funds: "100000",
             min_market_funds: "10",
             post_only: false,
             quote_currency: "USDC",
             quote_increment: "0.000001",
             status: "online",
             status_message: "",
             trading_disabled: false
           },
           %{
             base_currency: "BAT",
             base_increment: "0.000001",
             base_max_size: "300000",
             base_min_size: "1",
             cancel_only: false,
             display_name: "BAT/USDC",
             id: "BAT-USDC",
             limit_only: false,
             margin_enabled: false,
             max_market_funds: "100000",
             min_market_funds: "1",
             post_only: false,
             quote_currency: "USDC",
             quote_increment: "0.000001",
             status: "online",
             status_message: "",
             trading_disabled: false
           },
           %{
             base_currency: "LINK",
             base_increment: "1",
             base_max_size: "800000",
             base_min_size: "1",
             cancel_only: false,
             display_name: "LINK/USD",
             id: "LINK-USD",
             limit_only: false,
             margin_enabled: false,
             max_market_funds: "100000",
             min_market_funds: "10",
             post_only: false,
             quote_currency: "USD",
             quote_increment: "0.000001",
             status: "online",
             status_message: "",
             trading_disabled: false
           },
           %{
             base_currency: "BTC",
             base_increment: "0.00000001",
             base_max_size: "10000",
             base_min_size: "0.001",
             cancel_only: false,
             display_name: "BTC/USD",
             id: "BTC-USD",
             limit_only: false,
             margin_enabled: true,
             max_market_funds: "1000000",
             min_market_funds: "10",
             post_only: false,
             quote_currency: "USD",
             quote_increment: "0.01",
             status: "online",
             status_message: "",
             trading_disabled: false
           },
           %{
             base_currency: "BTC",
             base_increment: "0.00000001",
             base_max_size: "10000",
             base_min_size: "0.001",
             cancel_only: false,
             display_name: "BTC/EUR",
             id: "BTC-EUR",
             limit_only: false,
             margin_enabled: false,
             max_market_funds: "600000",
             min_market_funds: "10",
             post_only: false,
             quote_currency: "EUR",
             quote_increment: "0.01",
             status: "online",
             status_message: "",
             trading_disabled: false
           },
           %{
             base_currency: "ETH",
             base_increment: "0.00000001",
             base_max_size: "1000000",
             base_min_size: "0.01",
             cancel_only: false,
             display_name: "ETH/BTC",
             id: "ETH-BTC",
             limit_only: false,
             margin_enabled: false,
             max_market_funds: "80",
             min_market_funds: "0.001",
             post_only: false,
             quote_currency: "BTC",
             quote_increment: "0.00001",
             status: "online",
             status_message: "",
             trading_disabled: false
           },
           %{
             base_currency: "BTC",
             base_increment: "0.00000001",
             base_max_size: "10000",
             base_min_size: "0.001",
             cancel_only: false,
             display_name: "BTC/GBP",
             id: "BTC-GBP",
             limit_only: false,
             margin_enabled: false,
             max_market_funds: "200000",
             min_market_funds: "10",
             post_only: false,
             quote_currency: "GBP",
             quote_increment: "0.01",
             status: "online",
             status_message: "",
             trading_disabled: false
           }
         ]
       ], :json}
    ])

    assert get_json() == :json

    assert validate(:cowboy_req)
    assert validate(JSX)
  end
end
