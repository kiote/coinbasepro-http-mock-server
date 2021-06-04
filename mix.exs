defmodule CoinbaseProHttpMockServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :coinbase_pro_http_mock_server,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      test_coverage: [tool: ExCoveralls],
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
      {:con_cache, "~> 1.0"},
      {:cowboy, "~> 2.9"},
      {:exjsx, "~> 4.0"},

      # only dev deps
      {:dialyxir, "~> 1.0", only: :dev, runtime: false},
      {:earmark, "~> 1.4", only: :dev},
      {:ex_doc, "~> 0.24", only: :dev},

      # only test deps
      {:excoveralls, "~> 0.10", only: :test},
      {:meck, "~> 0.9", only: :test},

      # dev and test deps
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
    ]
  end

  defp package() do
    [
      name: "coinbase_pro_http_mock_server",
      maintainers: ["Ekaterina Krivich"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/kiote/coinbasepro-http-mock-server"}
    ]
  end

  defp description() do
    "HTTP Request & Response Server. An incomplete clone of https://api-public.sandbox.pro.coinbase.com for mocking (testing) purposes"
  end
end
