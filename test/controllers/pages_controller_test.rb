require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get contactenos" do
    get :contactenos
    assert_response :success
  end

end
