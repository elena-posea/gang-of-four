require 'test_helper'

class PetitiesControllerTest < ActionController::TestCase
  setup do
    @petity = petities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:petities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create petity" do
    assert_difference('Petitie.count') do
      post :create, petity: { continut: @petity.continut, titlu: @petity.titlu, user_id: @petity.user_id }
    end

    assert_redirected_to petity_path(assigns(:petity))
  end

  test "should show petity" do
    get :show, id: @petity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @petity
    assert_response :success
  end

  test "should update petity" do
    patch :update, id: @petity, petity: { continut: @petity.continut, titlu: @petity.titlu, user_id: @petity.user_id }
    assert_redirected_to petity_path(assigns(:petity))
  end

  test "should destroy petity" do
    assert_difference('Petitie.count', -1) do
      delete :destroy, id: @petity
    end

    assert_redirected_to petities_path
  end
end
