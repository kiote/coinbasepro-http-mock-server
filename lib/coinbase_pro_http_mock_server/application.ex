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
      # Starts a worker by calling: CoinbaseProHttpMockServer.Worker.start_link(arg)
      # {CoinbaseProHttpMockServer.Worker, arg}
    ]

    {:ok, http_port} = Application.fetch_env(:coinbase_pro_http_mock_server, :http_port)
    IO.puts("Starting HTTParrot on port #{http_port}")

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CoinbaseProHttpMockServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
