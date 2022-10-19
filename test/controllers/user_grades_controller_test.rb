require "test_helper"

class UserGradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_class = user_grades(:one)
  end

  test "should get index" do
    get user_grades_url
    assert_response :success
  end

  test "should get new" do
    get new_user_class_url
    assert_response :success
  end

  test "should create user_class" do
    assert_difference("UserClass.count") do
      post user_grades_url, params: { user_class: {  } }
    end

    assert_redirected_to user_class_url(UserClass.last)
  end

  test "should show user_class" do
    get user_class_url(@user_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_class_url(@user_class)
    assert_response :success
  end

  test "should update user_class" do
    patch user_class_url(@user_class), params: { user_class: {  } }
    assert_redirected_to user_class_url(@user_class)
  end

  test "should destroy user_class" do
    assert_difference("UserClass.count", -1) do
      delete user_class_url(@user_class)
    end

    assert_redirected_to user_grades_url
  end
end
