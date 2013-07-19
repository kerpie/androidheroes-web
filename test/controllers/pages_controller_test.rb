require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get landing_index" do
    get :landing_index
    assert_response :success
  end

end
