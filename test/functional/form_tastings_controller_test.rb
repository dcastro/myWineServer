require 'test_helper'

class FormTastingsControllerTest < ActionController::TestCase
  setup do
    @form_tasting = form_tastings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_tastings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_tasting" do
    assert_difference('FormTasting.count') do
      post :create, form_tasting: {  }
    end

    assert_redirected_to form_tasting_path(assigns(:form_tasting))
  end

  test "should show form_tasting" do
    get :show, id: @form_tasting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form_tasting
    assert_response :success
  end

  test "should update form_tasting" do
    put :update, id: @form_tasting, form_tasting: {  }
    assert_redirected_to form_tasting_path(assigns(:form_tasting))
  end

  test "should destroy form_tasting" do
    assert_difference('FormTasting.count', -1) do
      delete :destroy, id: @form_tasting
    end

    assert_redirected_to form_tastings_path
  end
end
