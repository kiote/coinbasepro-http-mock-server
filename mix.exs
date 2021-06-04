defmodule CoinbaseProHttpMockServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :coinbase_pro_http_mock_server,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {CoinbaseProHttpMockServer.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 2.9"},
      {:exjsx, "~> 4.0"},
      {:con_cache, "~> 1.0"},
      {:earmark, "~> 1.4", only: :dev},
      {:ex_doc, "~> 0.24", only: :dev},
      {:meck, "~> 0.9", only: :test}
    ]
  end

  defp package() do
    [
      maintainers: ["Ekaterina Krivich"],
      licenses: ["MIT"]
    ]
  end
end
