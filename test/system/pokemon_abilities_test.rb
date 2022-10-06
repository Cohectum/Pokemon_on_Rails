require "application_system_test_case"

class PokemonAbilitiesTest < ApplicationSystemTestCase
  setup do
    @pokemon_ability = pokemon_abilities(:one)
  end

  test "visiting the index" do
    visit pokemon_abilities_url
    assert_selector "h1", text: "Pokemon abilities"
  end

  test "should create pokemon ability" do
    visit pokemon_abilities_url
    click_on "New pokemon ability"

    fill_in "Abilityid", with: @pokemon_ability.abilityId
    fill_in "Ability", with: @pokemon_ability.ability_id
    fill_in "Pokemonid", with: @pokemon_ability.pokemonId
    fill_in "Pokemon", with: @pokemon_ability.pokemon_id
    click_on "Create Pokemon ability"

    assert_text "Pokemon ability was successfully created"
    click_on "Back"
  end

  test "should update Pokemon ability" do
    visit pokemon_ability_url(@pokemon_ability)
    click_on "Edit this pokemon ability", match: :first

    fill_in "Abilityid", with: @pokemon_ability.abilityId
    fill_in "Ability", with: @pokemon_ability.ability_id
    fill_in "Pokemonid", with: @pokemon_ability.pokemonId
    fill_in "Pokemon", with: @pokemon_ability.pokemon_id
    click_on "Update Pokemon ability"

    assert_text "Pokemon ability was successfully updated"
    click_on "Back"
  end

  test "should destroy Pokemon ability" do
    visit pokemon_ability_url(@pokemon_ability)
    click_on "Destroy this pokemon ability", match: :first

    assert_text "Pokemon ability was successfully destroyed"
  end
end
