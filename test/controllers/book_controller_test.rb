require 'test_helper'

class BookControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get publisher" do
    get :publisher
    assert_response :success
  end

  test "should get community" do
    get :community
    assert_response :success
  end

end
