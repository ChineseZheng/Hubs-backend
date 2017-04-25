require 'test_helper'

class Api::V1::UserToCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_user_to_category = api_v1_user_to_categories(:one)
  end

  test "should get index" do
    get api_v1_user_to_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_user_to_category_url
    assert_response :success
  end

  test "should create api_v1_user_to_category" do
    assert_difference('Api::V1::UserToCategory.count') do
      post api_v1_user_to_categories_url, params: { api_v1_user_to_category: { category_id: @api_v1_user_to_category.category_id, user_id: @api_v1_user_to_category.user_id } }
    end

    assert_redirected_to api_v1_user_to_category_url(Api::V1::UserToCategory.last)
  end

  test "should show api_v1_user_to_category" do
    get api_v1_user_to_category_url(@api_v1_user_to_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_user_to_category_url(@api_v1_user_to_category)
    assert_response :success
  end

  test "should update api_v1_user_to_category" do
    patch api_v1_user_to_category_url(@api_v1_user_to_category), params: { api_v1_user_to_category: { category_id: @api_v1_user_to_category.category_id, user_id: @api_v1_user_to_category.user_id } }
    assert_redirected_to api_v1_user_to_category_url(@api_v1_user_to_category)
  end

  test "should destroy api_v1_user_to_category" do
    assert_difference('Api::V1::UserToCategory.count', -1) do
      delete api_v1_user_to_category_url(@api_v1_user_to_category)
    end

    assert_redirected_to api_v1_user_to_categories_url
  end
end
