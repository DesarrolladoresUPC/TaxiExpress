require 'test_helper'

class DirfavoritaRegistrosControllerTest < ActionController::TestCase
  setup do
    @dirfavorita_registro = dirfavorita_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dirfavorita_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dirfavorita_registro" do
    assert_difference('DirfavoritaRegistro.count') do
      post :create, dirfavorita_registro: { dirfavorita: @dirfavorita_registro.dirfavorita, distrito: @dirfavorita_registro.distrito, nombre: @dirfavorita_registro.nombre }
    end

    assert_redirected_to dirfavorita_registro_path(assigns(:dirfavorita_registro))
  end

  test "should show dirfavorita_registro" do
    get :show, id: @dirfavorita_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dirfavorita_registro
    assert_response :success
  end

  test "should update dirfavorita_registro" do
    patch :update, id: @dirfavorita_registro, dirfavorita_registro: { dirfavorita: @dirfavorita_registro.dirfavorita, distrito: @dirfavorita_registro.distrito, nombre: @dirfavorita_registro.nombre }
    assert_redirected_to dirfavorita_registro_path(assigns(:dirfavorita_registro))
  end

  test "should destroy dirfavorita_registro" do
    assert_difference('DirfavoritaRegistro.count', -1) do
      delete :destroy, id: @dirfavorita_registro
    end

    assert_redirected_to dirfavorita_registros_path
  end
end
