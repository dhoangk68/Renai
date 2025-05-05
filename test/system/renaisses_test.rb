require "application_system_test_case"

class RenaissesTest < ApplicationSystemTestCase
  setup do
    @renaiss = renaisses(:one)
  end

  test "visiting the index" do
    visit renaisses_url
    assert_selector "h1", text: "Renaisses"
  end

  test "should create renaiss" do
    visit renaisses_url
    click_on "New renaiss"

    fill_in "Author", with: @renaiss.author
    fill_in "Born died", with: @renaiss.born_died
    fill_in "Date", with: @renaiss.date
    fill_in "Form", with: @renaiss.form
    fill_in "Location", with: @renaiss.location
    fill_in "School", with: @renaiss.school
    fill_in "Technique", with: @renaiss.technique
    fill_in "Timeframe", with: @renaiss.timeframe
    fill_in "Title", with: @renaiss.title
    fill_in "Type", with: @renaiss.type
    fill_in "Url", with: @renaiss.url
    click_on "Create Renaiss"

    assert_text "Renaiss was successfully created"
    click_on "Back"
  end

  test "should update Renaiss" do
    visit renaiss_url(@renaiss)
    click_on "Edit this renaiss", match: :first

    fill_in "Author", with: @renaiss.author
    fill_in "Born died", with: @renaiss.born_died
    fill_in "Date", with: @renaiss.date
    fill_in "Form", with: @renaiss.form
    fill_in "Location", with: @renaiss.location
    fill_in "School", with: @renaiss.school
    fill_in "Technique", with: @renaiss.technique
    fill_in "Timeframe", with: @renaiss.timeframe
    fill_in "Title", with: @renaiss.title
    fill_in "Type", with: @renaiss.type
    fill_in "Url", with: @renaiss.url
    click_on "Update Renaiss"

    assert_text "Renaiss was successfully updated"
    click_on "Back"
  end

  test "should destroy Renaiss" do
    visit renaiss_url(@renaiss)
    click_on "Destroy this renaiss", match: :first

    assert_text "Renaiss was successfully destroyed"
  end
end
