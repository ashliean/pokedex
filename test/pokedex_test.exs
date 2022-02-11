defmodule PokedexTest do
  use ExUnit.Case

  doctest Pokedex

  import Tesla.Mock

  setup do
    mock(fn
      %{method: :get, url: "https://pokeapi.co/api/v2/pokemon/1"} ->
      %Tesla.Env{status:200, body:{"id":1, "name": "bulbasaur"}}
      end)
      :ok
  end

  setup do
    mock(fn
      %{method: :get, url: "https://pokeapi.co/api/v2/pokemon/bulbasaur"} ->
      %Tesla.Env{status:200, body:{"id":1, "name": "bulbasaur"}}
      end)

      :ok
  end



  test "check id" do
    assert {:ok, %Tesla.Env{} = env} =  
    assert Pokedex.get_id("bulbasaur") == 1
  end

  test "check name" do
    assert Pokedex.get_name(1) == "bulbasaur"
  end
end
