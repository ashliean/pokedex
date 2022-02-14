defmodule Pokedex.PokemonDatabaseFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Pokedex.PokemonDatabase` context.
  """

  @doc """
  Generate a pokemon.
  """
  def pokemon_fixture(attrs \\ %{}) do
    {:ok, pokemon} =
      attrs
      |> Enum.into(%{
        abilities: [],
        name: "some name"
      })
      |> Pokedex.PokemonDatabase.create_pokemon()

    pokemon
  end
end
