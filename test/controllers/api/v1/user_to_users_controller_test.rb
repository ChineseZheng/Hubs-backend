require 'test_helper'

class Api::V1::UserToUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_user_to_user = api_v1_user_to_users(:one)
  end

  test "should get index" do
    get api_v1_user_to_users_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_user_to_user_url
    assert_response :success
  end

  test "should create api_v1_user_to_user" do
    assert_difference('Api::V1::UserToUser.count') do
      post api_v1_user_to_users_url, params: { api_v1_user_to_user: { fans_user_id: @api_v1_user_to_user.fans_user_id, star_user_id: @api_v1_user_to_user.star_user_id } }
    end

    assert_redirected_to api_v1_user_to_user_url(Api::V1::UserToUser.last)
  end

  test "should show api_v1_user_to_user" do
    get api_v1_user_to_user_url(@api_v1_user_to_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_user_to_user_url(@api_v1_user_to_user)
    assert_response :success
  end

  test "should update api_v1_user_to_user" do
    patch api_v1_user_to_user_url(@api_v1_user_to_user), params: { api_v1_user_to_user: { fans_user_id: @api_v1_user_to_user.fans_user_id, star_user_id: @api_v1_user_to_user.star_user_id } }
    assert_redirected_to api_v1_user_to_user_url(@api_v1_user_to_user)
  end

  test "should destroy api_v1_user_to_user" do
    assert_difference('Api::V1::UserToUser.count', -1) do
      delete api_v1_user_to_user_url(@api_v1_user_to_user)
    end

    assert_redirected_to api_v1_user_to_users_url
  end
end
