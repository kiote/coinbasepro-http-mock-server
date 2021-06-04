defmodule CoinbaseProHttpMockServer.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    dispatch =
      :cowboy_router.compile([
        {:_,
         [
           {"/", :cowboy_static, {:priv_file, :coinbase_pro_http_mock_server, "index.html"}}
         ]}
      ])

    children = [
      {ConCache,
       [
         ttl_check_interval: :timer.minutes(5),
         global_ttl: :timer.hours(12),
         name: :requests_registry
       ]}
    ]

    {:ok, http_port} = Application.fetch_env(:coinbase_pro_http_mock_server, :http_port)
    IO.puts("Starting CoinbaseProHttpMockServer on port #{http_port}")

    {:ok, _} =
      :cowboy.start_clear(
        :http,
        [port: http_port],
        %{env: %{dispatch: dispatch}}
      )

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CoinbaseProHttpMockServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
