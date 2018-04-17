require 'test_helper'

class PhotoAttivitaControllerTest < ActionController::TestCase
  setup do
    @photo_attivitum = photo_attivita(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_attivita)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_attivitum" do
    assert_difference('PhotoAttivitum.count') do
      post :create, photo_attivitum: { id_attivita: @photo_attivitum.id_attivita, titolo: @photo_attivitum.titolo }
    end

    assert_redirected_to photo_attivitum_path(assigns(:photo_attivitum))
  end

  test "should show photo_attivitum" do
    get :show, id: @photo_attivitum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_attivitum
    assert_response :success
  end

  test "should update photo_attivitum" do
    patch :update, id: @photo_attivitum, photo_attivitum: { id_attivita: @photo_attivitum.id_attivita, titolo: @photo_attivitum.titolo }
    assert_redirected_to photo_attivitum_path(assigns(:photo_attivitum))
  end

  test "should destroy photo_attivitum" do
    assert_difference('PhotoAttivitum.count', -1) do
      delete :destroy, id: @photo_attivitum
    end

    assert_redirected_to photo_attivita_path
  end
end
