require 'test_helper'

class CatLibrisControllerTest < ActionController::TestCase
  setup do
    @cat_libri = cat_libris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cat_libris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cat_libri" do
    assert_difference('CatLibri.count') do
      post :create, cat_libri: { descrizione: @cat_libri.descrizione, nome: @cat_libri.nome }
    end

    assert_redirected_to cat_libri_path(assigns(:cat_libri))
  end

  test "should show cat_libri" do
    get :show, id: @cat_libri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cat_libri
    assert_response :success
  end

  test "should update cat_libri" do
    patch :update, id: @cat_libri, cat_libri: { descrizione: @cat_libri.descrizione, nome: @cat_libri.nome }
    assert_redirected_to cat_libri_path(assigns(:cat_libri))
  end

  test "should destroy cat_libri" do
    assert_difference('CatLibri.count', -1) do
      delete :destroy, id: @cat_libri
    end

    assert_redirected_to cat_libris_path
  end
end
