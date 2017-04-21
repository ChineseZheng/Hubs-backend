require 'test_helper'

class TeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_url
    assert_response :success
  end

  test "should create teacher" do
    assert_difference('Teacher.count') do
      post teachers_url, params: { teacher: { account: @teacher.account, avatar: @teacher.avatar, concern_course_id_list: @teacher.concern_course_id_list, description: @teacher.description, emial: @teacher.emial, name: @teacher.name, password: @teacher.password, school_id: @teacher.school_id, upload_course_id_list: @teacher.upload_course_id_list } }
    end

    assert_redirected_to teacher_url(Teacher.last)
  end

  test "should show teacher" do
    get teacher_url(@teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_url(@teacher)
    assert_response :success
  end

  test "should update teacher" do
    patch teacher_url(@teacher), params: { teacher: { account: @teacher.account, avatar: @teacher.avatar, concern_course_id_list: @teacher.concern_course_id_list, description: @teacher.description, emial: @teacher.emial, name: @teacher.name, password: @teacher.password, school_id: @teacher.school_id, upload_course_id_list: @teacher.upload_course_id_list } }
    assert_redirected_to teacher_url(@teacher)
  end

  test "should destroy teacher" do
    assert_difference('Teacher.count', -1) do
      delete teacher_url(@teacher)
    end

    assert_redirected_to teachers_url
  end
end
