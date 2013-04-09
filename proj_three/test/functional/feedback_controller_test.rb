require 'test_helper'

class FeedbackControllerTest < ActionController::TestCase
  test "should get submit_feedback" do
    get :submit_feedback
    assert_response :success
  end

  test "should get view_feedback" do
    get :view_feedback
    assert_response :success
  end

end
