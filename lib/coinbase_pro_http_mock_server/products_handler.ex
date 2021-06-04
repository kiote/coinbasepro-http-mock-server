defmodule CoinbaseProHttpMockServer.ProductsHandler do
  @moduledoc """
  /products rest endpoint
  """
  def get_json() do
    [
      %{
        id: "LINK-USDC",
        base_currency: "LINK",
        quote_currency: "USDC",
        base_min_size: "1",
        base_max_size: "800000",
        quote_increment: "0.000001",
        base_increment: "1",
        display_name: "LINK/USDC",
        min_market_funds: "10",
        max_market_funds: "100000",
        margin_enabled: false,
        post_only: false,
        limit_only: false,
        cancel_only: false,
        trading_disabled: false,
        status: "online",
        status_message: ""
      },
      %{
        id: "BAT-USDC",
        base_currency: "BAT",
        quote_currency: "USDC",
        base_min_size: "1",
        base_max_size: "300000",
        quote_increment: "0.000001",
        base_increment: "0.000001",
        display_name: "BAT/USDC",
        min_market_funds: "1",
        max_market_funds: "100000",
        margin_enabled: false,
        post_only: false,
        limit_only: false,
        cancel_only: false,
        trading_disabled: false,
        status: "online",
        status_message: ""
      },
      %{
        id: "LINK-USD",
        base_currency: "LINK",
        quote_currency: "USD",
        base_min_size: "1",
        base_max_size: "800000",
        quote_increment: "0.000001",
        base_increment: "1",
        display_name: "LINK/USD",
        min_market_funds: "10",
        max_market_funds: "100000",
        margin_enabled: false,
        post_only: false,
        limit_only: false,
        cancel_only: false,
        trading_disabled: false,
        status: "online",
        status_message: ""
      },
      %{
        id: "BTC-USD",
        base_currency: "BTC",
        quote_currency: "USD",
        base_min_size: "0.001",
        base_max_size: "10000",
        quote_increment: "0.01",
        base_increment: "0.00000001",
        display_name: "BTC/USD",
        min_market_funds: "10",
        max_market_funds: "1000000",
        margin_enabled: true,
        post_only: false,
        limit_only: false,
        cancel_only: false,
        trading_disabled: false,
        status: "online",
        status_message: ""
      },
      %{
        id: "BTC-EUR",
        base_currency: "BTC",
        quote_currency: "EUR",
        base_min_size: "0.001",
        base_max_size: "10000",
        quote_increment: "0.01",
        base_increment: "0.00000001",
        display_name: "BTC/EUR",
        min_market_funds: "10",
        max_market_funds: "600000",
        margin_enabled: false,
        post_only: false,
        limit_only: false,
        cancel_only: false,
        trading_disabled: false,
        status: "online",
        status_message: ""
      },
      %{
        id: "ETH-BTC",
        base_currency: "ETH",
        quote_currency: "BTC",
        base_min_size: "0.01",
        base_max_size: "1000000",
        quote_increment: "0.00001",
        base_increment: "0.00000001",
        display_name: "ETH/BTC",
        min_market_funds: "0.001",
        max_market_funds: "80",
        margin_enabled: false,
        post_only: false,
        limit_only: false,
        cancel_only: false,
        trading_disabled: false,
        status: "online",
        status_message: ""
      },
      %{
        id: "BTC-GBP",
        base_currency: "BTC",
        quote_currency: "GBP",
        base_min_size: "0.001",
        base_max_size: "10000",
        quote_increment: "0.01",
        base_increment: "0.00000001",
        display_name: "BTC/GBP",
        min_market_funds: "10",
        max_market_funds: "200000",
        margin_enabled: false,
        post_only: false,
        limit_only: false,
        cancel_only: false,
        trading_disabled: false,
        status: "online",
        status_message: ""
      }
    ]
    |> JSX.encode!()
  end
end
