require 'test_helper'

class Api::V1::StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_student = api_v1_students(:one)
  end

  test "should get index" do
    get api_v1_students_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_student_url
    assert_response :success
  end

  test "should create api_v1_student" do
    assert_difference('Api::V1::Student.count') do
      post api_v1_students_url, params: { api_v1_student: { account: @api_v1_student.account, avatar: @api_v1_student.avatar, course_id_list: @api_v1_student.course_id_list, course_progress: @api_v1_student.course_progress, description: @api_v1_student.description, email: @api_v1_student.email, loading_info: @api_v1_student.loading_info, name: @api_v1_student.name, password: @api_v1_student.password } }
    end

    assert_redirected_to api_v1_student_url(Api::V1::Student.last)
  end

  test "should show api_v1_student" do
    get api_v1_student_url(@api_v1_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_student_url(@api_v1_student)
    assert_response :success
  end

  test "should update api_v1_student" do
    patch api_v1_student_url(@api_v1_student), params: { api_v1_student: { account: @api_v1_student.account, avatar: @api_v1_student.avatar, course_id_list: @api_v1_student.course_id_list, course_progress: @api_v1_student.course_progress, description: @api_v1_student.description, email: @api_v1_student.email, loading_info: @api_v1_student.loading_info, name: @api_v1_student.name, password: @api_v1_student.password } }
    assert_redirected_to api_v1_student_url(@api_v1_student)
  end

  test "should destroy api_v1_student" do
    assert_difference('Api::V1::Student.count', -1) do
      delete api_v1_student_url(@api_v1_student)
    end

    assert_redirected_to api_v1_students_url
  end
end
