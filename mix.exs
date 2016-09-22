defmodule EctoShortcuts.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_shortcuts,
     version: "0.1.2",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: "Ecto extension adding shortcuts for common usecases",
     package: package,
     name: "EctoShortcuts",
     docs: [source_url: "https://github.com/MishaConway/ecto_shortcuts"]]
  end

  defp package do
   [contributors: ["Misha Conway"],
    licenses: ["MIT"],
    links: %{github: "https://github.com/MishaConway/ecto_shortcuts"},
    maintainers: ["Misha Conway"],
    files: ~w(mix.exs README.md CHANGELOG.md lib)]
 end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :ecto]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ecto, ">= 2.0.4"},
    {:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
