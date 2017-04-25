require 'test_helper'

class Api::V1::UserTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_user_type = api_v1_user_types(:one)
  end

  test "should get index" do
    get api_v1_user_types_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_user_type_url
    assert_response :success
  end

  test "should create api_v1_user_type" do
    assert_difference('Api::V1::UserType.count') do
      post api_v1_user_types_url, params: { api_v1_user_type: { name: @api_v1_user_type.name } }
    end

    assert_redirected_to api_v1_user_type_url(Api::V1::UserType.last)
  end

  test "should show api_v1_user_type" do
    get api_v1_user_type_url(@api_v1_user_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_user_type_url(@api_v1_user_type)
    assert_response :success
  end

  test "should update api_v1_user_type" do
    patch api_v1_user_type_url(@api_v1_user_type), params: { api_v1_user_type: { name: @api_v1_user_type.name } }
    assert_redirected_to api_v1_user_type_url(@api_v1_user_type)
  end

  test "should destroy api_v1_user_type" do
    assert_difference('Api::V1::UserType.count', -1) do
      delete api_v1_user_type_url(@api_v1_user_type)
    end

    assert_redirected_to api_v1_user_types_url
  end
end
