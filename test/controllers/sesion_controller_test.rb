require 'test_helper'

class SesionControllerTest < ActionController::TestCase
  test "should get primario" do
    get :primario
    assert_response :success
  end

end
