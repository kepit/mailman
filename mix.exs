defmodule Mailman.Mixfile do
  use Mix.Project

  def project do
    [ app: :mailman,
      version: "0.0.2",
      elixir: "~> 0.13",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:ssl, :crypto, :gen_smtp]]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [ 
      { :gen_smtp, "~> 0.1", git: "https://github.com/Vagabond/gen_smtp.git" }
    ]
  end
end
