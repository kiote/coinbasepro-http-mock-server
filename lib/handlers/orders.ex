defmodule CoinbaseProHttpMockServer.Handlers.Orders do
  @moduledoc """
  /orders rest endpoints
  """
  def order do
    %{
      "created_at" => "2021-06-09T17:08:08.914382Z",
      "executed_value" => "0",
      "fill_fees" => "0",
      "filled_size" => "0",
      "funds" => "49.75124378",
      "id" => "b4a2955e-3de9-4fb6-b864-9ac2cae96c56",
      "post_only" => false,
      "product_id" => "BTC-EUR",
      "settled" => false,
      "side" => "buy",
      "specified_funds" => "50",
      "status" => "pending",
      "stp" => "dc",
      "type" => "market"
    }
    |> JSX.encode!()
  end
end
