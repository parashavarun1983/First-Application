require 'test_helper'

class VarunscaffoldsControllerTest < ActionController::TestCase
  setup do
    @varunscaffold = varunscaffolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:varunscaffolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create varunscaffold" do
    assert_difference('Varunscaffold.count') do
      post :create, varunscaffold: {  }
    end

    assert_redirected_to varunscaffold_path(assigns(:varunscaffold))
  end

  test "should show varunscaffold" do
    get :show, id: @varunscaffold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @varunscaffold
    assert_response :success
  end

  test "should update varunscaffold" do
    patch :update, id: @varunscaffold, varunscaffold: {  }
    assert_redirected_to varunscaffold_path(assigns(:varunscaffold))
  end

  test "should destroy varunscaffold" do
    assert_difference('Varunscaffold.count', -1) do
      delete :destroy, id: @varunscaffold
    end

    assert_redirected_to varunscaffolds_path
  end
end
