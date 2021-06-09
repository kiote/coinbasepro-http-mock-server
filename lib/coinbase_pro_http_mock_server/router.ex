defmodule CoinbaseProHttpMockServer.Router do
  use Plug.Router

  alias CoinbaseProHttpMockServer.Handlers.Accounts
  alias CoinbaseProHttpMockServer.Handlers.Orders
  alias CoinbaseProHttpMockServer.Handlers.Products

  plug(:match)
  plug(:dispatch)

  get "/products" do
    send_resp(conn, 200, Products.products())
  end

  get "/products/BTC-EUR/stats" do
    send_resp(conn, 200, Products.btc_eur_stats())
  end

  get "/accounts" do
    send_resp(conn, 200, Accounts.accounts())
  end

  post "/orders" do
    send_resp(conn, 200, Orders.order())
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end
