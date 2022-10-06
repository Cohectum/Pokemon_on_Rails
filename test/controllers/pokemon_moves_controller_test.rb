require "test_helper"

class PokemonMovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemon_move = pokemon_moves(:one)
  end

  test "should get index" do
    get pokemon_moves_url
    assert_response :success
  end

  test "should get new" do
    get new_pokemon_move_url
    assert_response :success
  end

  test "should create pokemon_move" do
    assert_difference("PokemonMove.count") do
      post pokemon_moves_url, params: { pokemon_move: { moveId: @pokemon_move.moveId, move_id: @pokemon_move.move_id, pokemonId: @pokemon_move.pokemonId, pokemon_id: @pokemon_move.pokemon_id } }
    end

    assert_redirected_to pokemon_move_url(PokemonMove.last)
  end

  test "should show pokemon_move" do
    get pokemon_move_url(@pokemon_move)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemon_move_url(@pokemon_move)
    assert_response :success
  end

  test "should update pokemon_move" do
    patch pokemon_move_url(@pokemon_move), params: { pokemon_move: { moveId: @pokemon_move.moveId, move_id: @pokemon_move.move_id, pokemonId: @pokemon_move.pokemonId, pokemon_id: @pokemon_move.pokemon_id } }
    assert_redirected_to pokemon_move_url(@pokemon_move)
  end

  test "should destroy pokemon_move" do
    assert_difference("PokemonMove.count", -1) do
      delete pokemon_move_url(@pokemon_move)
    end

    assert_redirected_to pokemon_moves_url
  end
end
