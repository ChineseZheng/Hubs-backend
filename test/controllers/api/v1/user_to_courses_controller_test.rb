require 'test_helper'

class Api::V1::UserToCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_user_to_course = api_v1_user_to_courses(:one)
  end

  test "should get index" do
    get api_v1_user_to_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_user_to_course_url
    assert_response :success
  end

  test "should create api_v1_user_to_course" do
    assert_difference('Api::V1::UserToCourse.count') do
      post api_v1_user_to_courses_url, params: { api_v1_user_to_course: { category_id: @api_v1_user_to_course.category_id, course_id: @api_v1_user_to_course.course_id, user_id: @api_v1_user_to_course.user_id } }
    end

    assert_redirected_to api_v1_user_to_course_url(Api::V1::UserToCourse.last)
  end

  test "should show api_v1_user_to_course" do
    get api_v1_user_to_course_url(@api_v1_user_to_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_user_to_course_url(@api_v1_user_to_course)
    assert_response :success
  end

  test "should update api_v1_user_to_course" do
    patch api_v1_user_to_course_url(@api_v1_user_to_course), params: { api_v1_user_to_course: { category_id: @api_v1_user_to_course.category_id, course_id: @api_v1_user_to_course.course_id, user_id: @api_v1_user_to_course.user_id } }
    assert_redirected_to api_v1_user_to_course_url(@api_v1_user_to_course)
  end

  test "should destroy api_v1_user_to_course" do
    assert_difference('Api::V1::UserToCourse.count', -1) do
      delete api_v1_user_to_course_url(@api_v1_user_to_course)
    end

    assert_redirected_to api_v1_user_to_courses_url
  end
end
