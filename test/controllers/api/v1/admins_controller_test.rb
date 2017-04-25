require 'test_helper'

class Api::V1::AdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_admin = api_v1_admins(:one)
  end

  test "should get index" do
    get api_v1_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_admin_url
    assert_response :success
  end

  test "should create api_v1_admin" do
    assert_difference('Api::V1::Admin.count') do
      post api_v1_admins_url, params: { api_v1_admin: { account: @api_v1_admin.account, admin_type_id: @api_v1_admin.admin_type_id, email: @api_v1_admin.email, name: @api_v1_admin.name, password: @api_v1_admin.password, phone: @api_v1_admin.phone } }
    end

    assert_redirected_to api_v1_admin_url(Api::V1::Admin.last)
  end

  test "should show api_v1_admin" do
    get api_v1_admin_url(@api_v1_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_admin_url(@api_v1_admin)
    assert_response :success
  end

  test "should update api_v1_admin" do
    patch api_v1_admin_url(@api_v1_admin), params: { api_v1_admin: { account: @api_v1_admin.account, admin_type_id: @api_v1_admin.admin_type_id, email: @api_v1_admin.email, name: @api_v1_admin.name, password: @api_v1_admin.password, phone: @api_v1_admin.phone } }
    assert_redirected_to api_v1_admin_url(@api_v1_admin)
  end

  test "should destroy api_v1_admin" do
    assert_difference('Api::V1::Admin.count', -1) do
      delete api_v1_admin_url(@api_v1_admin)
    end

    assert_redirected_to api_v1_admins_url
  end
end
