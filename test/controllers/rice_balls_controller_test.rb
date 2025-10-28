require "test_helper"

class RiceBallsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rice_balls_index_url
    assert_response :success
  end

  test "should get show" do
    get rice_balls_show_url
    assert_response :success
  end

  test "should get new" do
    get rice_balls_new_url
    assert_response :success
  end

  test "should get create" do
    get rice_balls_create_url
    assert_response :success
  end

  test "should get edit" do
    get rice_balls_edit_url
    assert_response :success
  end

  test "should get update" do
    get rice_balls_update_url
    assert_response :success
  end

  test "should get destroy" do
    get rice_balls_destroy_url
    assert_response :success
  end
end
