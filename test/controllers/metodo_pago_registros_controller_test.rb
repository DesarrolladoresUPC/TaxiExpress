require 'test_helper'

class MetodoPagoRegistrosControllerTest < ActionController::TestCase
  setup do
    @metodo_pago_registro = metodo_pago_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metodo_pago_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metodo_pago_registro" do
    assert_difference('MetodoPagoRegistro.count') do
      post :create, metodo_pago_registro: { codigo: @metodo_pago_registro.codigo, nombre: @metodo_pago_registro.nombre }
    end

    assert_redirected_to metodo_pago_registro_path(assigns(:metodo_pago_registro))
  end

  test "should show metodo_pago_registro" do
    get :show, id: @metodo_pago_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metodo_pago_registro
    assert_response :success
  end

  test "should update metodo_pago_registro" do
    patch :update, id: @metodo_pago_registro, metodo_pago_registro: { codigo: @metodo_pago_registro.codigo, nombre: @metodo_pago_registro.nombre }
    assert_redirected_to metodo_pago_registro_path(assigns(:metodo_pago_registro))
  end

  test "should destroy metodo_pago_registro" do
    assert_difference('MetodoPagoRegistro.count', -1) do
      delete :destroy, id: @metodo_pago_registro
    end

    assert_redirected_to metodo_pago_registros_path
  end
end
