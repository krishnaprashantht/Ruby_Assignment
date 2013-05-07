require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get add_user" do
    get :add_user
    assert_response :success
  end

end
