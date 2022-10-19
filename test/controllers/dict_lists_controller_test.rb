require "test_helper"

class DictListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dict_list = dict_lists(:one)
  end

  test "should get index" do
    get dict_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_dict_list_url
    assert_response :success
  end

  test "should create dict_list" do
    assert_difference("DictList.count") do
      post dict_lists_url, params: { dict_list: {  } }
    end

    assert_redirected_to dict_list_url(DictList.last)
  end

  test "should show dict_list" do
    get dict_list_url(@dict_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_dict_list_url(@dict_list)
    assert_response :success
  end

  test "should update dict_list" do
    patch dict_list_url(@dict_list), params: { dict_list: {  } }
    assert_redirected_to dict_list_url(@dict_list)
  end

  test "should destroy dict_list" do
    assert_difference("DictList.count", -1) do
      delete dict_list_url(@dict_list)
    end

    assert_redirected_to dict_lists_url
  end
end
