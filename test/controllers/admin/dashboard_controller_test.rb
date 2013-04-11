require 'test_helper'

class Admin::DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "routing" do
    assert_recognizes({ controller: "admin/dashboard", action: "index", subdomain: 'admin' }, "http://admin.app.test/")
  end
end
