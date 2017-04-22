require 'test_helper'

class Api::V1::SchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_school = api_v1_schools(:one)
  end

  test "should get index" do
    get api_v1_schools_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_school_url
    assert_response :success
  end

  test "should create api_v1_school" do
    assert_difference('Api::V1::School.count') do
      post api_v1_schools_url, params: { api_v1_school: { account: @api_v1_school.account, avatar: @api_v1_school.avatar, description: @api_v1_school.description, email: @api_v1_school.email, loading_info: @api_v1_school.loading_info, name: @api_v1_school.name, password: @api_v1_school.password, student_count: @api_v1_school.student_count, student_id_list: @api_v1_school.student_id_list, teacher_count: @api_v1_school.teacher_count, teacher_id_list: @api_v1_school.teacher_id_list } }
    end

    assert_redirected_to api_v1_school_url(Api::V1::School.last)
  end

  test "should show api_v1_school" do
    get api_v1_school_url(@api_v1_school)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_school_url(@api_v1_school)
    assert_response :success
  end

  test "should update api_v1_school" do
    patch api_v1_school_url(@api_v1_school), params: { api_v1_school: { account: @api_v1_school.account, avatar: @api_v1_school.avatar, description: @api_v1_school.description, email: @api_v1_school.email, loading_info: @api_v1_school.loading_info, name: @api_v1_school.name, password: @api_v1_school.password, student_count: @api_v1_school.student_count, student_id_list: @api_v1_school.student_id_list, teacher_count: @api_v1_school.teacher_count, teacher_id_list: @api_v1_school.teacher_id_list } }
    assert_redirected_to api_v1_school_url(@api_v1_school)
  end

  test "should destroy api_v1_school" do
    assert_difference('Api::V1::School.count', -1) do
      delete api_v1_school_url(@api_v1_school)
    end

    assert_redirected_to api_v1_schools_url
  end
end
