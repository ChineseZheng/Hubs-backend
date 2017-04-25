require 'test_helper'

class Api::V1::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_user = api_v1_users(:one)
  end

  test "should get index" do
    get api_v1_users_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_user_url
    assert_response :success
  end

  test "should create api_v1_user" do
    assert_difference('Api::V1::User.count') do
      post api_v1_users_url, params: { api_v1_user: { account: @api_v1_user.account, avatar_url: @api_v1_user.avatar_url, description: @api_v1_user.description, email: @api_v1_user.email, name: @api_v1_user.name, password: @api_v1_user.password, phone: @api_v1_user.phone, user_type_id: @api_v1_user.user_type_id } }
    end

    assert_redirected_to api_v1_user_url(Api::V1::User.last)
  end

  test "should show api_v1_user" do
    get api_v1_user_url(@api_v1_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_user_url(@api_v1_user)
    assert_response :success
  end

  test "should update api_v1_user" do
    patch api_v1_user_url(@api_v1_user), params: { api_v1_user: { account: @api_v1_user.account, avatar_url: @api_v1_user.avatar_url, description: @api_v1_user.description, email: @api_v1_user.email, name: @api_v1_user.name, password: @api_v1_user.password, phone: @api_v1_user.phone, user_type_id: @api_v1_user.user_type_id } }
    assert_redirected_to api_v1_user_url(@api_v1_user)
  end

  test "should destroy api_v1_user" do
    assert_difference('Api::V1::User.count', -1) do
      delete api_v1_user_url(@api_v1_user)
    end

    assert_redirected_to api_v1_users_url
  end
end
