require 'test_helper'

class Api::V1::CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_course = api_v1_courses(:one)
  end

  test "should get index" do
    get api_v1_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_course_url
    assert_response :success
  end

  test "should create api_v1_course" do
    assert_difference('Api::V1::Course.count') do
      post api_v1_courses_url, params: { api_v1_course: { avatar: @api_v1_course.avatar, category: @api_v1_course.category, description: @api_v1_course.description, fans_count: @api_v1_course.fans_count, name: @api_v1_course.name, uploader_id: @api_v1_course.uploader_id, video_url: @api_v1_course.video_url } }
    end

    assert_redirected_to api_v1_course_url(Api::V1::Course.last)
  end

  test "should show api_v1_course" do
    get api_v1_course_url(@api_v1_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_course_url(@api_v1_course)
    assert_response :success
  end

  test "should update api_v1_course" do
    patch api_v1_course_url(@api_v1_course), params: { api_v1_course: { avatar: @api_v1_course.avatar, category: @api_v1_course.category, description: @api_v1_course.description, fans_count: @api_v1_course.fans_count, name: @api_v1_course.name, uploader_id: @api_v1_course.uploader_id, video_url: @api_v1_course.video_url } }
    assert_redirected_to api_v1_course_url(@api_v1_course)
  end

  test "should destroy api_v1_course" do
    assert_difference('Api::V1::Course.count', -1) do
      delete api_v1_course_url(@api_v1_course)
    end

    assert_redirected_to api_v1_courses_url
  end
end
