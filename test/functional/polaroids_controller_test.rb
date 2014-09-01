require 'test_helper'

class PolaroidsControllerTest < ActionController::TestCase
  setup do
    @polaroid = polaroids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:polaroids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create polaroid" do
    assert_difference('Polaroid.count') do
      post :create, polaroid: { artist: @polaroid.artist, description: @polaroid.description, name: @polaroid.name, picture: @polaroid.picture, price: @polaroid.price }
    end

    assert_redirected_to polaroid_path(assigns(:polaroid))
  end

  test "should show polaroid" do
    get :show, id: @polaroid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @polaroid
    assert_response :success
  end

  test "should update polaroid" do
    put :update, id: @polaroid, polaroid: { artist: @polaroid.artist, description: @polaroid.description, name: @polaroid.name, picture: @polaroid.picture, price: @polaroid.price }
    assert_redirected_to polaroid_path(assigns(:polaroid))
  end

  test "should destroy polaroid" do
    assert_difference('Polaroid.count', -1) do
      delete :destroy, id: @polaroid
    end

    assert_redirected_to polaroids_path
  end
end
