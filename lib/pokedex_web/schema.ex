defmodule PokedexWeb.Schema do
  @moduledoc """

  Definition of the Pokemon schema in Absinthe.Schema
  """
  use Absinthe.Schema

  alias PokedexWeb.Resolvers

  object :pokemon do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :base_experience, :integer

    #Given time I would create an object called ability instead of a list of ability names
    field :abilities, list_of(:string)

  end


  @doc "Get all pokemon"
  query do
    field :all_pokemon, non_null(list_of(non_null(:pokemon))) do
      resolve(&Resolvers.all_pokemon/3)
    end
  end
end
