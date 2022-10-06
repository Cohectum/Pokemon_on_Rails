require "application_system_test_case"

class PokemonMovesTest < ApplicationSystemTestCase
  setup do
    @pokemon_move = pokemon_moves(:one)
  end

  test "visiting the index" do
    visit pokemon_moves_url
    assert_selector "h1", text: "Pokemon moves"
  end

  test "should create pokemon move" do
    visit pokemon_moves_url
    click_on "New pokemon move"

    fill_in "Moveid", with: @pokemon_move.moveId
    fill_in "Move", with: @pokemon_move.move_id
    fill_in "Pokemonid", with: @pokemon_move.pokemonId
    fill_in "Pokemon", with: @pokemon_move.pokemon_id
    click_on "Create Pokemon move"

    assert_text "Pokemon move was successfully created"
    click_on "Back"
  end

  test "should update Pokemon move" do
    visit pokemon_move_url(@pokemon_move)
    click_on "Edit this pokemon move", match: :first

    fill_in "Moveid", with: @pokemon_move.moveId
    fill_in "Move", with: @pokemon_move.move_id
    fill_in "Pokemonid", with: @pokemon_move.pokemonId
    fill_in "Pokemon", with: @pokemon_move.pokemon_id
    click_on "Update Pokemon move"

    assert_text "Pokemon move was successfully updated"
    click_on "Back"
  end

  test "should destroy Pokemon move" do
    visit pokemon_move_url(@pokemon_move)
    click_on "Destroy this pokemon move", match: :first

    assert_text "Pokemon move was successfully destroyed"
  end
end
