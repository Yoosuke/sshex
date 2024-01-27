defmodule Mix.Tasks.Sshex do
  @moduledoc "The Sshex mix task: `mix help Sshex`"
  use Mix.Task

  @shortdoc "Generates an SSH key function."
  def run(args) do
    case args do
      ["help"] ->
        Sshex.print_ssh_keygen_help()
      ["create"] ->
        Sshex.create()
      _ ->
        IO.puts("Invalid arguments. Use `mix sshex help` for more information.")
    end
  end
end
