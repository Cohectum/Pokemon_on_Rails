require "application_system_test_case"

class MovesTest < ApplicationSystemTestCase
  setup do
    @move = moves(:one)
  end

  test "visiting the index" do
    visit moves_url
    assert_selector "h1", text: "Moves"
  end

  test "should create move" do
    visit moves_url
    click_on "New move"

    fill_in "Accuracy", with: @move.accuracy
    fill_in "Effect", with: @move.effect
    fill_in "Flavourtext", with: @move.flavourText
    fill_in "Moveid", with: @move.moveId
    fill_in "Name", with: @move.name
    click_on "Create Move"

    assert_text "Move was successfully created"
    click_on "Back"
  end

  test "should update Move" do
    visit move_url(@move)
    click_on "Edit this move", match: :first

    fill_in "Accuracy", with: @move.accuracy
    fill_in "Effect", with: @move.effect
    fill_in "Flavourtext", with: @move.flavourText
    fill_in "Moveid", with: @move.moveId
    fill_in "Name", with: @move.name
    click_on "Update Move"

    assert_text "Move was successfully updated"
    click_on "Back"
  end

  test "should destroy Move" do
    visit move_url(@move)
    click_on "Destroy this move", match: :first

    assert_text "Move was successfully destroyed"
  end
end
