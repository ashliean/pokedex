# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Pokedex.Repo.insert!(%Pokedex.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Pokedex.PokemonDatabase.Pokemon
alias Pokedex.Repo

%Pokemon{name: "bulbasaur", abilities: ["overgrow", "chlorophyll"], base_experience: 64 } |> Repo.insert!
%Pokemon{name: "ivysaur", abilities: ["overgrow, chlorophyll"], base_experience: 142} |> Repo.insert!
%Pokemon{name: "venusaur", abilities: ["overgrow, chlorophyll", "sword-dance"], base_experience: 236} |> Repo.insert!
