require "application_system_test_case"

class PokemonTypesTest < ApplicationSystemTestCase
  setup do
    @pokemon_type = pokemon_types(:one)
  end

  test "visiting the index" do
    visit pokemon_types_url
    assert_selector "h1", text: "Pokemon types"
  end

  test "should create pokemon type" do
    visit pokemon_types_url
    click_on "New pokemon type"

    fill_in "Pokemonid", with: @pokemon_type.pokemonId
    fill_in "Pokemon", with: @pokemon_type.pokemon_id
    fill_in "Typeid", with: @pokemon_type.typeId
    fill_in "Type", with: @pokemon_type.type_id
    click_on "Create Pokemon type"

    assert_text "Pokemon type was successfully created"
    click_on "Back"
  end

  test "should update Pokemon type" do
    visit pokemon_type_url(@pokemon_type)
    click_on "Edit this pokemon type", match: :first

    fill_in "Pokemonid", with: @pokemon_type.pokemonId
    fill_in "Pokemon", with: @pokemon_type.pokemon_id
    fill_in "Typeid", with: @pokemon_type.typeId
    fill_in "Type", with: @pokemon_type.type_id
    click_on "Update Pokemon type"

    assert_text "Pokemon type was successfully updated"
    click_on "Back"
  end

  test "should destroy Pokemon type" do
    visit pokemon_type_url(@pokemon_type)
    click_on "Destroy this pokemon type", match: :first

    assert_text "Pokemon type was successfully destroyed"
  end
end
