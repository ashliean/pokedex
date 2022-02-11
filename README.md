# Pokedex

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix


https://pokeapi.co/

Build an Elixir app that will retrieve the name of the Pokemon if I give it an ID or the ID of a Pokemon if I give it a name (Example input output: "ditto" -> "132", "139" -> "omastar", "9999" -> "not found").

Required libraries:

https://github.com/teamon/tesla for making HTTP requests
This is an open book assignment and feel free to ask the interviewer any questions about the problem or Elixir.

Tasks:

  * Create a GitHub public repo for this project (ask for assistance if needed)
  * Create a client (Elixir Module) using the Tesla library to make requests to the Pokemon API
  * Endpoint: https://pokeapi.co/api/v2/pokemon/
  * PokeAPI documentation: https://pokeapi.co/docs/v2
  * Create a module with two functions
  * Function 1: accepts a pokemon ID and returns a pokemon’s name with the given ID.
  * Function 2: accepts a pokemon name and returns a pokemon’s ID with the given name.
  * Write a unit test for both functions
  * https://elixirschool.com/en/lessons/testing/basics
  
  * Use TeslaMock to not make actual HTTP requests in your tests https://github.com/teamon/tesla#testing
  * Make sure all this new and functioning Elixir code is pushed up to the repository you created in step 1.

Extra:


  * Build a Graphql endpoint in Absinthe
  * Build a database schema for the pokemon in Ecto!

    * Build a Phoenix Endpoint that responds to REST API calls