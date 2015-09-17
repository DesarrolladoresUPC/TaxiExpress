require 'test_helper'

class OperadorRegistrosControllerTest < ActionController::TestCase
  setup do
    @operador_registro = operador_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operador_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operador_registro" do
    assert_difference('OperadorRegistro.count') do
      post :create, operador_registro: { apellidos: @operador_registro.apellidos, codigo: @operador_registro.codigo, cuenta: @operador_registro.cuenta, nombres: @operador_registro.nombres, telefono: @operador_registro.telefono }
    end

    assert_redirected_to operador_registro_path(assigns(:operador_registro))
  end

  test "should show operador_registro" do
    get :show, id: @operador_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operador_registro
    assert_response :success
  end

  test "should update operador_registro" do
    patch :update, id: @operador_registro, operador_registro: { apellidos: @operador_registro.apellidos, codigo: @operador_registro.codigo, cuenta: @operador_registro.cuenta, nombres: @operador_registro.nombres, telefono: @operador_registro.telefono }
    assert_redirected_to operador_registro_path(assigns(:operador_registro))
  end

  test "should destroy operador_registro" do
    assert_difference('OperadorRegistro.count', -1) do
      delete :destroy, id: @operador_registro
    end

    assert_redirected_to operador_registros_path
  end
end
