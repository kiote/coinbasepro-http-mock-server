defmodule CoinbaseProHttpMockServer.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/products" do
    send_resp(conn, 200, CoinbaseProHttpMockServer.ProductsHandler.get_json())
  end

  match _ do
    send_resp(conn, 404, "oops")
  end

  # :cowboy_router.compile([
  #   {:_,
  #    [
  #      {"/", :cowboy_static, {:priv_file, :coinbase_pro_http_mock_server, "index.html"}},
  #      {"/products", CoinbaseProHttpMockServer.ProductsHandler, []}
  #    ]}
  # ])
end
