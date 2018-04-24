defmodule SigilF.MixProject do
  use Mix.Project

  @github_url "https://github.com/govm/sigil_f"

  def project do
    [
      app: :sigil_f,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Make fn/0 that returns given string",
      package: package(),
      source_url: @github_url,
      homepage_url: @github_url
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
      {:earmark, "~> 1.2", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Go Saito"],
      licenses: ["MIT"],
      links: %{"GitHub repository" => @github_url}
    ]
  end
end
