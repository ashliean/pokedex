defmodule PokedexWeb.Resolvers do
  @moduledoc """

  Resolver between database and graphql
  """
  alias Pokedex.PokemonDatabase

  def all_pokemon(_root,_args,_info) do
    {:ok, PokemonDatabase.list_pokemon}
  end
end
