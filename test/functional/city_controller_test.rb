require 'test_helper'

class CityControllerTest < ActionController::TestCase
  test "should get viewcity" do
    get :viewcity
    assert_response :success
  end

  test "should get createtag" do
    get :createtag
    assert_response :success
  end

end
