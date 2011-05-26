require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get sitemap" do
    get :sitemap
    assert_response :success
  end

end
