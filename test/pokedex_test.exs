defmodule PokedexTest do
  use ExUnit.Case

  doctest Pokedex

  import Tesla.Mock


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

  test "check name" do
    assert Pokedex.get_name(1) == "bulbasaur"
  end


  setup do


      :ok
  end


  test "check id" do
    assert Pokedex.get_id("bulbasaur") == 1
  end


  test "check not found" do
  assert Pokedex.get_name("fake") == "not found"
  assert Pokedex.get_id(9999) == "not found"
  end
end
