defmodule ElixirApp do
  use Application
  alias UUID
  @x 5
  def start(_type, _args) do
    ElixirApp.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end
  
  def main do
    x = 5
    IO.puts(@x)
  end
end
