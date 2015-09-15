require 'test_helper'

class ConductorRegistrosControllerTest < ActionController::TestCase
  setup do
    @conductor_registro = conductor_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conductor_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conductor_registro" do
    assert_difference('ConductorRegistro.count') do
      post :create, conductor_registro: { apellido: @conductor_registro.apellido, codigo: @conductor_registro.codigo, contraseña: @conductor_registro.contraseña, correo: @conductor_registro.correo, nombre: @conductor_registro.nombre, telefono: @conductor_registro.telefono }
    end

    assert_redirected_to conductor_registro_path(assigns(:conductor_registro))
  end

  test "should show conductor_registro" do
    get :show, id: @conductor_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conductor_registro
    assert_response :success
  end

  test "should update conductor_registro" do
    patch :update, id: @conductor_registro, conductor_registro: { apellido: @conductor_registro.apellido, codigo: @conductor_registro.codigo, contraseña: @conductor_registro.contraseña, correo: @conductor_registro.correo, nombre: @conductor_registro.nombre, telefono: @conductor_registro.telefono }
    assert_redirected_to conductor_registro_path(assigns(:conductor_registro))
  end

  test "should destroy conductor_registro" do
    assert_difference('ConductorRegistro.count', -1) do
      delete :destroy, id: @conductor_registro
    end

    assert_redirected_to conductor_registros_path
  end
end
