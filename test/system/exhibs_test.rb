require "application_system_test_case"

class ExhibsTest < ApplicationSystemTestCase
  setup do
    @exhib = exhibs(:one)
  end

  test "visiting the index" do
    visit exhibs_url
    assert_selector "h1", text: "Exhibs"
  end

  test "creating a Exhib" do
    visit exhibs_url
    click_on "New Exhib"

    fill_in "Description", with: @exhib.description
    fill_in "Title", with: @exhib.title
    click_on "Create Exhib"

    assert_text "Exhib was successfully created"
    click_on "Back"
  end

  test "updating a Exhib" do
    visit exhibs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @exhib.description
    fill_in "Title", with: @exhib.title
    click_on "Update Exhib"

    assert_text "Exhib was successfully updated"
    click_on "Back"
  end

  test "destroying a Exhib" do
    visit exhibs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exhib was successfully destroyed"
  end
end
