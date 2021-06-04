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
end
