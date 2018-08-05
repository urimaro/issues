defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app:             :issues,
      escript:         escript_config(),
      version:         "0.1.0",
      name:            "Issues",
      source_url:      "https://github.com/urimaro/issues",
      elixir:          "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps:            deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      # {:httpoison, "~> 0.8"},
      httpoison: "~> 1.1",
      # {:poison,    "~> 1.5"}
      poison:    "~> 3.1",
      # ex_doc:  "~> 0.11",
      ex_doc:    "~> 0.19.1",
      # earmark: ">= 0.0.0"
      earmark:   "~> 1.2"
    ]
  end

  defp escript_config do
    [main_module: Issues.CLI]
  end
end
