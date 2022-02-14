defmodule Pokedex.PokemonDatabase.Pokemon do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pokemon" do
    field :abilities, {:array, :string}
    field :name, :string
    field :base_experience, :integer
    timestamps()
  end

  @doc false
  def changeset(pokemon, attrs) do
    pokemon
    |> cast(attrs, [:name, :abilities])
    |> validate_required([:name, :abilities])
  end
end
