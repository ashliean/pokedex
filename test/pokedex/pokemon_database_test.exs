# defmodule Pokedex.PokemonDatabaseTest do
#   use Pokedex.DataCase

#   alias Pokedex.PokemonDatabase

#   describe "pokemon" do
#     alias Pokedex.PokemonDatabase.Pokemon

#     import Pokedex.PokemonDatabaseFixtures

#     @invalid_attrs %{abilities: nil, name: nil}

#     test "list_pokemon/0 returns all pokemon" do
#       pokemon = pokemon_fixture()
#       assert PokemonDatabase.list_pokemon() == [pokemon]
#     end

#     test "get_pokemon!/1 returns the pokemon with given id" do
#       pokemon = pokemon_fixture()
#       assert PokemonDatabase.get_pokemon!(pokemon.id) == pokemon
#     end

#     test "create_pokemon/1 with valid data creates a pokemon" do
#       valid_attrs = %{abilities: [], name: "some name"}

#       assert {:ok, %Pokemon{} = pokemon} = PokemonDatabase.create_pokemon(valid_attrs)
#       assert pokemon.abilities == []
#       assert pokemon.name == "some name"
#     end

#     test "create_pokemon/1 with invalid data returns error changeset" do
#       assert {:error, %Ecto.Changeset{}} = PokemonDatabase.create_pokemon(@invalid_attrs)
#     end

#     test "update_pokemon/2 with valid data updates the pokemon" do
#       pokemon = pokemon_fixture()
#       update_attrs = %{abilities: [], name: "some updated name"}

#       assert {:ok, %Pokemon{} = pokemon} = PokemonDatabase.update_pokemon(pokemon, update_attrs)
#       assert pokemon.abilities == []
#       assert pokemon.name == "some updated name"
#     end

#     test "update_pokemon/2 with invalid data returns error changeset" do
#       pokemon = pokemon_fixture()
#       assert {:error, %Ecto.Changeset{}} = PokemonDatabase.update_pokemon(pokemon, @invalid_attrs)
#       assert pokemon == PokemonDatabase.get_pokemon!(pokemon.id)
#     end

#     test "delete_pokemon/1 deletes the pokemon" do
#       pokemon = pokemon_fixture()
#       assert {:ok, %Pokemon{}} = PokemonDatabase.delete_pokemon(pokemon)
#       assert_raise Ecto.NoResultsError, fn -> PokemonDatabase.get_pokemon!(pokemon.id) end
#     end

#     test "change_pokemon/1 returns a pokemon changeset" do
#       pokemon = pokemon_fixture()
#       assert %Ecto.Changeset{} = PokemonDatabase.change_pokemon(pokemon)
#     end
#   end
# end
