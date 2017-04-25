require 'test_helper'

class Api::V1::ProgressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_progress = api_v1_progresses(:one)
  end

  test "should get index" do
    get api_v1_progresses_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_progress_url
    assert_response :success
  end

  test "should create api_v1_progress" do
    assert_difference('Api::V1::Progress.count') do
      post api_v1_progresses_url, params: { api_v1_progress: { description: @api_v1_progress.description } }
    end

    assert_redirected_to api_v1_progress_url(Api::V1::Progress.last)
  end

  test "should show api_v1_progress" do
    get api_v1_progress_url(@api_v1_progress)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_progress_url(@api_v1_progress)
    assert_response :success
  end

  test "should update api_v1_progress" do
    patch api_v1_progress_url(@api_v1_progress), params: { api_v1_progress: { description: @api_v1_progress.description } }
    assert_redirected_to api_v1_progress_url(@api_v1_progress)
  end

  test "should destroy api_v1_progress" do
    assert_difference('Api::V1::Progress.count', -1) do
      delete api_v1_progress_url(@api_v1_progress)
    end

    assert_redirected_to api_v1_progresses_url
  end
end
