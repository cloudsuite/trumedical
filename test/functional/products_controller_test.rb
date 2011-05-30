require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get shop" do
    get :shop
    assert_response :success
  end

end
