require 'test_helper'

class SmsControllerTest < ActionController::TestCase
  test "should get receive" do
    get :receive
    assert_response :success
  end

end
