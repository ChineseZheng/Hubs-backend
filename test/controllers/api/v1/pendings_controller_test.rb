require 'test_helper'

class Api::V1::PendingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_pending = api_v1_pendings(:one)
  end

  test "should get index" do
    get api_v1_pendings_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_pending_url
    assert_response :success
  end

  test "should create api_v1_pending" do
    assert_difference('Api::V1::Pending.count') do
      post api_v1_pendings_url, params: { api_v1_pending: { account: @api_v1_pending.account, avatar_url: @api_v1_pending.avatar_url, description: @api_v1_pending.description, email: @api_v1_pending.email, name: @api_v1_pending.name, password: @api_v1_pending.password, phone: @api_v1_pending.phone, user_type_id: @api_v1_pending.user_type_id } }
    end

    assert_redirected_to api_v1_pending_url(Api::V1::Pending.last)
  end

  test "should show api_v1_pending" do
    get api_v1_pending_url(@api_v1_pending)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_pending_url(@api_v1_pending)
    assert_response :success
  end

  test "should update api_v1_pending" do
    patch api_v1_pending_url(@api_v1_pending), params: { api_v1_pending: { account: @api_v1_pending.account, avatar_url: @api_v1_pending.avatar_url, description: @api_v1_pending.description, email: @api_v1_pending.email, name: @api_v1_pending.name, password: @api_v1_pending.password, phone: @api_v1_pending.phone, user_type_id: @api_v1_pending.user_type_id } }
    assert_redirected_to api_v1_pending_url(@api_v1_pending)
  end

  test "should destroy api_v1_pending" do
    assert_difference('Api::V1::Pending.count', -1) do
      delete api_v1_pending_url(@api_v1_pending)
    end

    assert_redirected_to api_v1_pendings_url
  end
end
