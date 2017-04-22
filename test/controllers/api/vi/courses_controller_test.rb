require 'test_helper'

class Api::Vi::CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_vi_course = api_vi_courses(:one)
  end

  test "should get index" do
    get api_vi_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_api_vi_course_url
    assert_response :success
  end

  test "should create api_vi_course" do
    assert_difference('Api::Vi::Course.count') do
      post api_vi_courses_url, params: { api_vi_course: { avatar: @api_vi_course.avatar, category: @api_vi_course.category, description: @api_vi_course.description, fans_count: @api_vi_course.fans_count, name: @api_vi_course.name, uploader_id: @api_vi_course.uploader_id, video_url: @api_vi_course.video_url } }
    end

    assert_redirected_to api_vi_course_url(Api::Vi::Course.last)
  end

  test "should show api_vi_course" do
    get api_vi_course_url(@api_vi_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_vi_course_url(@api_vi_course)
    assert_response :success
  end

  test "should update api_vi_course" do
    patch api_vi_course_url(@api_vi_course), params: { api_vi_course: { avatar: @api_vi_course.avatar, category: @api_vi_course.category, description: @api_vi_course.description, fans_count: @api_vi_course.fans_count, name: @api_vi_course.name, uploader_id: @api_vi_course.uploader_id, video_url: @api_vi_course.video_url } }
    assert_redirected_to api_vi_course_url(@api_vi_course)
  end

  test "should destroy api_vi_course" do
    assert_difference('Api::Vi::Course.count', -1) do
      delete api_vi_course_url(@api_vi_course)
    end

    assert_redirected_to api_vi_courses_url
  end
end
