require 'test_helper'

class IniciarControllerTest < ActionController::TestCase
  test "should get standar" do
    get :standar
    assert_response :success
  end

  test "should get client" do
    get :client
    assert_response :success
  end

  test "should get chofer" do
    get :chofer
    assert_response :success
  end

end
