require "application_system_test_case"

class DictListsTest < ApplicationSystemTestCase
  setup do
    @dict_list = dict_lists(:one)
  end

  test "visiting the index" do
    visit dict_lists_url
    assert_selector "h1", text: "Dict lists"
  end

  test "should create dict list" do
    visit dict_lists_url
    click_on "New dict list"

    click_on "Create Dict list"

    assert_text "Dict list was successfully created"
    click_on "Back"
  end

  test "should update Dict list" do
    visit dict_list_url(@dict_list)
    click_on "Edit this dict list", match: :first

    click_on "Update Dict list"

    assert_text "Dict list was successfully updated"
    click_on "Back"
  end

  test "should destroy Dict list" do
    visit dict_list_url(@dict_list)
    click_on "Destroy this dict list", match: :first

    assert_text "Dict list was successfully destroyed"
  end
end
