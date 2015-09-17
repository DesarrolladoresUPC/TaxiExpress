require 'test_helper'

class VehiculoRegistrosControllerTest < ActionController::TestCase
  setup do
    @vehiculo_registro = vehiculo_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehiculo_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehiculo_registro" do
    assert_difference('VehiculoRegistro.count') do
      post :create, vehiculo_registro: { categoria: @vehiculo_registro.categoria, color: @vehiculo_registro.color, marca: @vehiculo_registro.marca, modelo: @vehiculo_registro.modelo, placa: @vehiculo_registro.placa }
    end

    assert_redirected_to vehiculo_registro_path(assigns(:vehiculo_registro))
  end

  test "should show vehiculo_registro" do
    get :show, id: @vehiculo_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehiculo_registro
    assert_response :success
  end

  test "should update vehiculo_registro" do
    patch :update, id: @vehiculo_registro, vehiculo_registro: { categoria: @vehiculo_registro.categoria, color: @vehiculo_registro.color, marca: @vehiculo_registro.marca, modelo: @vehiculo_registro.modelo, placa: @vehiculo_registro.placa }
    assert_redirected_to vehiculo_registro_path(assigns(:vehiculo_registro))
  end

  test "should destroy vehiculo_registro" do
    assert_difference('VehiculoRegistro.count', -1) do
      delete :destroy, id: @vehiculo_registro
    end

    assert_redirected_to vehiculo_registros_path
  end
end
