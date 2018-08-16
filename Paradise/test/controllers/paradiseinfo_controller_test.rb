require 'test_helper'

class ParadiseinfoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get menu" do
    get :menu
    assert_response :success
  end

  test "should get contactus" do
    get :contactus
    assert_response :success
  end

end
