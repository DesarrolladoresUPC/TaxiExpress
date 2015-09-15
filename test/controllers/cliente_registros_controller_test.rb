require 'test_helper'

class ClienteRegistrosControllerTest < ActionController::TestCase
  setup do
    @cliente_registro = cliente_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_registro" do
    assert_difference('ClienteRegistro.count') do
      post :create, cliente_registro: { apellido: @cliente_registro.apellido, contrasena: @cliente_registro.contrasena, correo: @cliente_registro.correo, nombre: @cliente_registro.nombre, telefono: @cliente_registro.telefono }
    end

    assert_redirected_to cliente_registro_path(assigns(:cliente_registro))
  end

  test "should show cliente_registro" do
    get :show, id: @cliente_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_registro
    assert_response :success
  end

  test "should update cliente_registro" do
    patch :update, id: @cliente_registro, cliente_registro: { apellido: @cliente_registro.apellido, contrasena: @cliente_registro.contrasena, correo: @cliente_registro.correo, nombre: @cliente_registro.nombre, telefono: @cliente_registro.telefono }
    assert_redirected_to cliente_registro_path(assigns(:cliente_registro))
  end

  test "should destroy cliente_registro" do
    assert_difference('ClienteRegistro.count', -1) do
      delete :destroy, id: @cliente_registro
    end

    assert_redirected_to cliente_registros_path
  end
end
