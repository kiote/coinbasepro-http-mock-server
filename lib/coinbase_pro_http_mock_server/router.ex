defmodule CoinbaseProHttpMockServer.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/products" do
    send_resp(conn, 200, CoinbaseProHttpMockServer.ProductsHandler.products())
  end

  get "/products/BTC-EUR/stats" do
    send_resp(conn, 200, CoinbaseProHttpMockServer.ProductsHandler.btc_eur_stats())
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end
