defmodule EctoApnsToken.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_apns_token,
     version: "0.1.0",
     description: description(),
     package: package(),
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  defp description do
    """
    An Ecto type for storing, validating and generating Apple APNS Tokens
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Ben Church"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/bechurch/ecto_apns_token",
        "Docs" => "https://hexdocs.pm/ecto_apns_token/"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.13", only: :dev},
      {:earmark, "~> 1.0.1", only: :dev}
    ]
  end
end
