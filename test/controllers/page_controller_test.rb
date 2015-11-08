require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get auction" do
    get :auction
    assert_response :success
  end

end
