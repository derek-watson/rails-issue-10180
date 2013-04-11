require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "routing" do
    assert_recognizes({ controller: "home", action: "index", subdomain: false }, "http://app.test/")
  end
end
