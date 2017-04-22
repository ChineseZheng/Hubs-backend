require 'test_helper'

class Api::V1::ParentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_parent = api_v1_parents(:one)
  end

  test "should get index" do
    get api_v1_parents_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_parent_url
    assert_response :success
  end

  test "should create api_v1_parent" do
    assert_difference('Api::V1::Parent.count') do
      post api_v1_parents_url, params: { api_v1_parent: { account: @api_v1_parent.account, avatar: @api_v1_parent.avatar, children_id_list: @api_v1_parent.children_id_list, course_id_list: @api_v1_parent.course_id_list, description: @api_v1_parent.description, email: @api_v1_parent.email, loading_info: @api_v1_parent.loading_info, name: @api_v1_parent.name, password: @api_v1_parent.password } }
    end

    assert_redirected_to api_v1_parent_url(Api::V1::Parent.last)
  end

  test "should show api_v1_parent" do
    get api_v1_parent_url(@api_v1_parent)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_parent_url(@api_v1_parent)
    assert_response :success
  end

  test "should update api_v1_parent" do
    patch api_v1_parent_url(@api_v1_parent), params: { api_v1_parent: { account: @api_v1_parent.account, avatar: @api_v1_parent.avatar, children_id_list: @api_v1_parent.children_id_list, course_id_list: @api_v1_parent.course_id_list, description: @api_v1_parent.description, email: @api_v1_parent.email, loading_info: @api_v1_parent.loading_info, name: @api_v1_parent.name, password: @api_v1_parent.password } }
    assert_redirected_to api_v1_parent_url(@api_v1_parent)
  end

  test "should destroy api_v1_parent" do
    assert_difference('Api::V1::Parent.count', -1) do
      delete api_v1_parent_url(@api_v1_parent)
    end

    assert_redirected_to api_v1_parents_url
  end
end
