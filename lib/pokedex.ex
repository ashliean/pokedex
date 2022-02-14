defmodule Pokedex do

  @moduledoc """
  Pokedex API wrapper
  """
  use Tesla, only: [:get], docs: false
  plug Tesla.Middleware.BaseUrl, "https://pokeapi.co/api/v2/pokemon/"
  plug Tesla.Middleware.JSON

  @doc "Get a name of pokemon based on ID"
  def get_id(name) do
    #Allow user to enter capitals
    case get("/#{String.downcase(name)}") do
      {:ok, %{status: 200, body: body}} -> body["id"]
      {:ok, %{status: 404}} -> "not found"
      {:error, _reason} -> "Internet Connection Error"
      _ -> "Unknown Error Occured"
    end
  end

  @doc "Get a ID of pokemon based on name"
  def get_name(id) do
    case get("/#{id}") do
      {:ok, %{status: 200, body: body}} -> body["name"]
      {:ok, %{status: 404}} -> "not found"
      {:error, _reason} -> "Internet Connection Error"
      _ -> "Unknown Error Occured"
    end
  end

  @doc "Get body from Tesla.get of pokemon "
  def get_all_details(id) do

    case get("/#{id}") do
      {:ok, %{status: 200, body: body}} -> body
      {:ok, %{status: 404}} -> "not found"
      {:error, _reason} -> "Internet Connection Error"
      _ -> "Unknown Error Occured"
    end
  end

end
