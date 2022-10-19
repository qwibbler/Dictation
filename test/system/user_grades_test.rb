require "application_system_test_case"

class UserGradesTest < ApplicationSystemTestCase
  setup do
    @user_class = user_grades(:one)
  end

  test "visiting the index" do
    visit user_grades_url
    assert_selector "h1", text: "User grades"
  end

  test "should create user class" do
    visit user_grades_url
    click_on "New user class"

    click_on "Create User class"

    assert_text "User class was successfully created"
    click_on "Back"
  end

  test "should update User class" do
    visit user_class_url(@user_class)
    click_on "Edit this user class", match: :first

    click_on "Update User class"

    assert_text "User class was successfully updated"
    click_on "Back"
  end

  test "should destroy User class" do
    visit user_class_url(@user_class)
    click_on "Destroy this user class", match: :first

    assert_text "User class was successfully destroyed"
  end
end
