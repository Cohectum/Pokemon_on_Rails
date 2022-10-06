require "test_helper"

class SpritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sprite = sprites(:one)
  end

  test "should get index" do
    get sprites_url
    assert_response :success
  end

  test "should get new" do
    get new_sprite_url
    assert_response :success
  end

  test "should create sprite" do
    assert_difference("Sprite.count") do
      post sprites_url, params: { sprite: { pokemon_id: @sprite.pokemon_id, spriteBack: @sprite.spriteBack, spriteFemailBack: @sprite.spriteFemailBack, spriteFemaleFront: @sprite.spriteFemaleFront, spriteFemaleShinyBack: @sprite.spriteFemaleShinyBack, spriteFemaleShinyFront: @sprite.spriteFemaleShinyFront, spriteFront: @sprite.spriteFront, spriteShinyBack: @sprite.spriteShinyBack, spriteShinyFront: @sprite.spriteShinyFront } }
    end

    assert_redirected_to sprite_url(Sprite.last)
  end

  test "should show sprite" do
    get sprite_url(@sprite)
    assert_response :success
  end

  test "should get edit" do
    get edit_sprite_url(@sprite)
    assert_response :success
  end

  test "should update sprite" do
    patch sprite_url(@sprite), params: { sprite: { pokemon_id: @sprite.pokemon_id, spriteBack: @sprite.spriteBack, spriteFemailBack: @sprite.spriteFemailBack, spriteFemaleFront: @sprite.spriteFemaleFront, spriteFemaleShinyBack: @sprite.spriteFemaleShinyBack, spriteFemaleShinyFront: @sprite.spriteFemaleShinyFront, spriteFront: @sprite.spriteFront, spriteShinyBack: @sprite.spriteShinyBack, spriteShinyFront: @sprite.spriteShinyFront } }
    assert_redirected_to sprite_url(@sprite)
  end

  test "should destroy sprite" do
    assert_difference("Sprite.count", -1) do
      delete sprite_url(@sprite)
    end

    assert_redirected_to sprites_url
  end
end
