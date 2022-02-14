defmodule PokedexTest do
  @moduledoc """

  Tests the pokedex.ex file. This test will check Pokedex.get_name/1 and Pokedex.get_id/1 for valid and invalid queries.

  """
  use ExUnit.Case

  doctest Pokedex

  import Tesla.Mock

  @doc """
  Set up all mock urls for this test
  """
  setup do
    mock fn
      %{method: :get, url: "https://pokeapi.co/api/v2/pokemon/1"} ->
        %Tesla.Env{status: 200, body: %{"id" => 1, "name" => "bulbasaur"}}
      %{method: :get, url: "https://pokeapi.co/api/v2/pokemon/bulbasaur"} ->
        %Tesla.Env{status: 200, body: %{"id" => 1, "name" => "bulbasaur"}}
      %{method: :get, url: "https://pokeapi.co/api/v2/pokemon/9999"} ->
        %Tesla.Env{status: 404, body: {}}
      %{method: :get, url: "https://pokeapi.co/api/v2/pokemon/fake"} ->
        %Tesla.Env{status: 404, body: {}}
    end
    :ok
  end

  @doc """
  Checks Pokedex.get_name/1 with a valid input
  """
  test "check name" do
    assert Pokedex.get_name(1) == "bulbasaur"
  end

    @doc """
  Checks Pokedex.get_id/1 with a valid input
  """
  test "check id" do
    assert Pokedex.get_id("bulbasaur") == 1
  end


  @doc """
  Checks Pokedex.get_name/1 and Pokedex.get_id/1 for invalid inputs
  """
  test "check not found" do
  assert Pokedex.get_id("fake") == "not found"
  assert Pokedex.get_name(9999) == "not found"
  end
end
