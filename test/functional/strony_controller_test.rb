require 'test_helper'

class StronyControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
