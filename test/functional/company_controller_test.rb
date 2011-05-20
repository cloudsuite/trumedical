require 'test_helper'

class CompanyControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get faqs" do
    get :faqs
    assert_response :success
  end

  test "should get shipping" do
    get :shipping
    assert_response :success
  end

  test "should get returns" do
    get :returns
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get service" do
    get :service
    assert_response :success
  end

end
