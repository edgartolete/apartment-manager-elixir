defmodule ElixirApp do
  use Application

  def start(_type, _args) do
    IO.puts(ElixirApp.hello())
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def hello do
    IO.puts("Test2")
  end
end
