defmodule CoinbaseProHttpMockServer.AccountsHandler do
  @moduledoc """
  /accounts rest endpoints
  """
  def accounts do
    [
      %{
        "available" => "0",
        "balance" => "0.0000000000000000",
        "currency" => "BAT",
        "hold" => "0.0000000000000000",
        "id" => "5e85456a-5114-4081-ae3d-f01806d8d887",
        "profile_id" => "eed226e5-aef2-4825-b3bb-2bfeb2d154d2",
        "trading_enabled" => true
      },
      %{
        "available" => "0",
        "balance" => "0.0000000000000000",
        "currency" => "BTC",
        "hold" => "0.0000000000000000",
        "id" => "fccc62c0-2ef1-4a76-80e1-4df10826a4bc",
        "profile_id" => "eed226e5-aef2-4825-b3bb-2bfeb2d154d2",
        "trading_enabled" => true
      },
      %{
        "available" => "0",
        "balance" => "0.0000000000000000",
        "currency" => "ETH",
        "hold" => "0.0000000000000000",
        "id" => "de804e2f-e41b-47dd-ad36-e487da861f1d",
        "profile_id" => "eed226e5-aef2-4825-b3bb-2bfeb2d154d2",
        "trading_enabled" => true
      },
      %{
        "available" => "0",
        "balance" => "0.0000000000000000",
        "currency" => "EUR",
        "hold" => "0.0000000000000000",
        "id" => "189ea2ef-2800-44b5-8940-ccdd55c22889",
        "profile_id" => "eed226e5-aef2-4825-b3bb-2bfeb2d154d2",
        "trading_enabled" => true
      },
      %{
        "available" => "0",
        "balance" => "0.0000000000000000",
        "currency" => "GBP",
        "hold" => "0.0000000000000000",
        "id" => "ad460a02-78b3-46c1-9852-b1ee5c9a6120",
        "profile_id" => "eed226e5-aef2-4825-b3bb-2bfeb2d154d2",
        "trading_enabled" => true
      },
      %{
        "available" => "0",
        "balance" => "0.0000000000000000",
        "currency" => "LINK",
        "hold" => "0.0000000000000000",
        "id" => "c43f1ec3-43c8-4c86-8b8a-cb38e8ab697d",
        "profile_id" => "eed226e5-aef2-4825-b3bb-2bfeb2d154d2",
        "trading_enabled" => true
      },
      %{
        "available" => "0",
        "balance" => "0.0000000000000000",
        "currency" => "USD",
        "hold" => "0.0000000000000000",
        "id" => "b4ec1757-ff55-4dc8-9f22-dc3e8d2f3894",
        "profile_id" => "eed226e5-aef2-4825-b3bb-2bfeb2d154d2",
        "trading_enabled" => true
      },
      %{
        "available" => "0",
        "balance" => "0.0000000000000000",
        "currency" => "USDC",
        "hold" => "0.0000000000000000",
        "id" => "f807caae-c283-4470-8da6-3b785a4984f1",
        "profile_id" => "eed226e5-aef2-4825-b3bb-2bfeb2d154d2",
        "trading_enabled" => true
      }
    ]
    |> JSX.encode!()
  end
end
