require "application_system_test_case"

class PresidentsTest < ApplicationSystemTestCase
  setup do
    @president = presidents(:one)
  end

  test "visiting the index" do
    visit presidents_url
    assert_selector "h1", text: "Presidents"
  end

  test "should create president" do
    visit presidents_url
    click_on "New president"

    fill_in "Comment", with: @president.comment
    fill_in "Image url", with: @president.image_url
    fill_in "Name", with: @president.name
    click_on "Create President"

    assert_text "President was successfully created"
    click_on "Back"
  end

  test "should update President" do
    visit president_url(@president)
    click_on "Edit this president", match: :first

    fill_in "Comment", with: @president.comment
    fill_in "Image url", with: @president.image_url
    fill_in "Name", with: @president.name
    click_on "Update President"

    assert_text "President was successfully updated"
    click_on "Back"
  end

  test "should destroy President" do
    visit president_url(@president)
    click_on "Destroy this president", match: :first

    assert_text "President was successfully destroyed"
  end
end
