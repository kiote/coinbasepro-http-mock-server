defmodule CoinbaseProHttpMockServer.ProductsHandler do
  use CoinbaseProHttpMockServer.Cowboy, methods: ~w(GET HEAD OPTIONS)

  def content_types_provided(req, state) do
    {[{{"application", "json", []}, :get_json}], req, state}
  end

  def get_json(req, state) do
    {[origin: "master"] |> JSX.encode!(), req, state}
  end
end
