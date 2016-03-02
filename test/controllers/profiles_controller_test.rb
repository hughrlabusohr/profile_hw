require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :new
    assert_response :success
  end

  test "should post create" do
    post :create
    assert_response :success
  end

end
