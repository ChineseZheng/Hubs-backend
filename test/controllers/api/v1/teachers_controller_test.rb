require 'test_helper'

class Api::V1::TeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_teacher = api_v1_teachers(:one)
  end

  test "should get index" do
    get api_v1_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_teacher_url
    assert_response :success
  end

  test "should create api_v1_teacher" do
    assert_difference('Api::V1::Teacher.count') do
      post api_v1_teachers_url, params: { api_v1_teacher: { account: @api_v1_teacher.account, avatar: @api_v1_teacher.avatar, course_id_list: @api_v1_teacher.course_id_list, description: @api_v1_teacher.description, email: @api_v1_teacher.email, loading_info: @api_v1_teacher.loading_info, name: @api_v1_teacher.name, password: @api_v1_teacher.password, school_id: @api_v1_teacher.school_id, student_id_list: @api_v1_teacher.student_id_list, upload_course_id_list: @api_v1_teacher.upload_course_id_list } }
    end

    assert_redirected_to api_v1_teacher_url(Api::V1::Teacher.last)
  end

  test "should show api_v1_teacher" do
    get api_v1_teacher_url(@api_v1_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_teacher_url(@api_v1_teacher)
    assert_response :success
  end

  test "should update api_v1_teacher" do
    patch api_v1_teacher_url(@api_v1_teacher), params: { api_v1_teacher: { account: @api_v1_teacher.account, avatar: @api_v1_teacher.avatar, course_id_list: @api_v1_teacher.course_id_list, description: @api_v1_teacher.description, email: @api_v1_teacher.email, loading_info: @api_v1_teacher.loading_info, name: @api_v1_teacher.name, password: @api_v1_teacher.password, school_id: @api_v1_teacher.school_id, student_id_list: @api_v1_teacher.student_id_list, upload_course_id_list: @api_v1_teacher.upload_course_id_list } }
    assert_redirected_to api_v1_teacher_url(@api_v1_teacher)
  end

  test "should destroy api_v1_teacher" do
    assert_difference('Api::V1::Teacher.count', -1) do
      delete api_v1_teacher_url(@api_v1_teacher)
    end

    assert_redirected_to api_v1_teachers_url
  end
end
