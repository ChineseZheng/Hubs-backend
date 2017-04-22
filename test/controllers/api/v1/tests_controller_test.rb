require 'test_helper'

class Api::V1::TestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_test = api_v1_tests(:one)
  end

  test "should get index" do
    get api_v1_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_test_url
    assert_response :success
  end

  test "should create api_v1_test" do
    assert_difference('Api::V1::Test.count') do
      post api_v1_tests_url, params: { api_v1_test: {  } }
    end

    assert_redirected_to api_v1_test_url(Api::V1::Test.last)
  end

  test "should show api_v1_test" do
    get api_v1_test_url(@api_v1_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_test_url(@api_v1_test)
    assert_response :success
  end

  test "should update api_v1_test" do
    patch api_v1_test_url(@api_v1_test), params: { api_v1_test: {  } }
    assert_redirected_to api_v1_test_url(@api_v1_test)
  end

  test "should destroy api_v1_test" do
    assert_difference('Api::V1::Test.count', -1) do
      delete api_v1_test_url(@api_v1_test)
    end

    assert_redirected_to api_v1_tests_url
  end
end
