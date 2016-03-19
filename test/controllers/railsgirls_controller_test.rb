require 'test_helper'

class RailsgirlsControllerTest < ActionController::TestCase
  setup do
    @railsgirl = railsgirls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railsgirls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railsgirl" do
    assert_difference('Railsgirl.count') do
      post :create, railsgirl: { description: @railsgirl.description, name: @railsgirl.name, picture: @railsgirl.picture, visit: @railsgirl.visit }
    end

    assert_redirected_to railsgirl_path(assigns(:railsgirl))
  end

  test "should show railsgirl" do
    get :show, id: @railsgirl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railsgirl
    assert_response :success
  end

  test "should update railsgirl" do
    patch :update, id: @railsgirl, railsgirl: { description: @railsgirl.description, name: @railsgirl.name, picture: @railsgirl.picture, visit: @railsgirl.visit }
    assert_redirected_to railsgirl_path(assigns(:railsgirl))
  end

  test "should destroy railsgirl" do
    assert_difference('Railsgirl.count', -1) do
      delete :destroy, id: @railsgirl
    end

    assert_redirected_to railsgirls_path
  end
end
