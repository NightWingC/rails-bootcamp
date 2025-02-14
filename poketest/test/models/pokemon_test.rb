require "test_helper"

class PokemonTest < ActiveSupport::TestCase
  test "Name is required" do
    pokemon = Pokemon.new
    assert_not pokemon.valid?

    pokemon.name = "charmander"
    assert pokemon.valid?
  end

  def test_name_is_required
    pokemon = pokemons(:charmander)
    # debugger
    pokemon.name = nil
    assert_not pokemon.valid?

    pokemon.name = "charmander"
    assert pokemon.valid?
  end
end
