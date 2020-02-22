require 'test_helper'

class EventReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get event_reviews_new_url
    assert_response :success
  end

  test "should get create" do
    get event_reviews_create_url
    assert_response :success
  end

end
