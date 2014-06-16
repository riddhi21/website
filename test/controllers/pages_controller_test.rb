require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get new_talents" do
    get :new_talents
    assert_response :success
  end

  test "should get event_organizer_contact" do
    get :event_organizer_contact
    assert_response :success
  end

end
