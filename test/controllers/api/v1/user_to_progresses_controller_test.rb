require 'test_helper'

class Api::V1::UserToProgressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_user_to_progress = api_v1_user_to_progresses(:one)
  end

  test "should get index" do
    get api_v1_user_to_progresses_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_user_to_progress_url
    assert_response :success
  end

  test "should create api_v1_user_to_progress" do
    assert_difference('Api::V1::UserToProgress.count') do
      post api_v1_user_to_progresses_url, params: { api_v1_user_to_progress: { category_id: @api_v1_user_to_progress.category_id, course_id: @api_v1_user_to_progress.course_id, user_id: @api_v1_user_to_progress.user_id } }
    end

    assert_redirected_to api_v1_user_to_progress_url(Api::V1::UserToProgress.last)
  end

  test "should show api_v1_user_to_progress" do
    get api_v1_user_to_progress_url(@api_v1_user_to_progress)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_user_to_progress_url(@api_v1_user_to_progress)
    assert_response :success
  end

  test "should update api_v1_user_to_progress" do
    patch api_v1_user_to_progress_url(@api_v1_user_to_progress), params: { api_v1_user_to_progress: { category_id: @api_v1_user_to_progress.category_id, course_id: @api_v1_user_to_progress.course_id, user_id: @api_v1_user_to_progress.user_id } }
    assert_redirected_to api_v1_user_to_progress_url(@api_v1_user_to_progress)
  end

  test "should destroy api_v1_user_to_progress" do
    assert_difference('Api::V1::UserToProgress.count', -1) do
      delete api_v1_user_to_progress_url(@api_v1_user_to_progress)
    end

    assert_redirected_to api_v1_user_to_progresses_url
  end
end
