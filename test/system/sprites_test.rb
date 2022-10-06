require "application_system_test_case"

class SpritesTest < ApplicationSystemTestCase
  setup do
    @sprite = sprites(:one)
  end

  test "visiting the index" do
    visit sprites_url
    assert_selector "h1", text: "Sprites"
  end

  test "should create sprite" do
    visit sprites_url
    click_on "New sprite"

    fill_in "Pokemon", with: @sprite.pokemon_id
    fill_in "Spriteback", with: @sprite.spriteBack
    fill_in "Spritefemailback", with: @sprite.spriteFemailBack
    fill_in "Spritefemalefront", with: @sprite.spriteFemaleFront
    fill_in "Spritefemaleshinyback", with: @sprite.spriteFemaleShinyBack
    fill_in "Spritefemaleshinyfront", with: @sprite.spriteFemaleShinyFront
    fill_in "Spritefront", with: @sprite.spriteFront
    fill_in "Spriteshinyback", with: @sprite.spriteShinyBack
    fill_in "Spriteshinyfront", with: @sprite.spriteShinyFront
    click_on "Create Sprite"

    assert_text "Sprite was successfully created"
    click_on "Back"
  end

  test "should update Sprite" do
    visit sprite_url(@sprite)
    click_on "Edit this sprite", match: :first

    fill_in "Pokemon", with: @sprite.pokemon_id
    fill_in "Spriteback", with: @sprite.spriteBack
    fill_in "Spritefemailback", with: @sprite.spriteFemailBack
    fill_in "Spritefemalefront", with: @sprite.spriteFemaleFront
    fill_in "Spritefemaleshinyback", with: @sprite.spriteFemaleShinyBack
    fill_in "Spritefemaleshinyfront", with: @sprite.spriteFemaleShinyFront
    fill_in "Spritefront", with: @sprite.spriteFront
    fill_in "Spriteshinyback", with: @sprite.spriteShinyBack
    fill_in "Spriteshinyfront", with: @sprite.spriteShinyFront
    click_on "Update Sprite"

    assert_text "Sprite was successfully updated"
    click_on "Back"
  end

  test "should destroy Sprite" do
    visit sprite_url(@sprite)
    click_on "Destroy this sprite", match: :first

    assert_text "Sprite was successfully destroyed"
  end
end
