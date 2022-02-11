defmodule Pokedex do
  @moduledoc """
  Pokedex API wrapper
  """
  use Tesla, only: [:get], docs: false
  plug Tesla.Middleware.BaseUrl, "https://pokeapi.co/api/v2/pokemon/"
  plug Tesla.Middleware.JSON

  def fetch_all do
    get("https://pokeapi.co/api/v2/pokemon/")
  end

  def get_id(name) do
    {:ok, data} = get("/#{name}")
    {:ok, id} = Map.fetch(data.body, "id")
    id
  end

  def get_name(id) do
    {:ok, data} = get("/#{id}")
    {:ok, name} = Map.fetch(data.body, "name")
    name
  end
end
