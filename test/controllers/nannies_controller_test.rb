require 'test_helper'

class NanniesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nannies_index_url
    assert_response :success
  end

  test "should get show" do
    get nannies_show_url
    assert_response :success
  end

  test "should get new" do
    get nannies_new_url
    assert_response :success
  end

  test "should get create" do
    get nannies_create_url
    assert_response :success
  end

  test "should get edit" do
    get nannies_edit_url
    assert_response :success
  end

  test "should get update" do
    get nannies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get nannies_destroy_url
    assert_response :success
  end

end
