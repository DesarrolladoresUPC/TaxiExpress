require 'test_helper'

class ChoferRegistrosControllerTest < ActionController::TestCase
  setup do
    @chofer_registro = chofer_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chofer_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chofer_registro" do
    assert_difference('ChoferRegistro.count') do
      post :create, chofer_registro: { apellidos: @chofer_registro.apellidos, codigo: @chofer_registro.codigo, cuenta: @chofer_registro.cuenta, distrito: @chofer_registro.distrito, estado: @chofer_registro.estado, nombres: @chofer_registro.nombres, placa: @chofer_registro.placa, telefono: @chofer_registro.telefono }
    end

    assert_redirected_to chofer_registro_path(assigns(:chofer_registro))
  end

  test "should show chofer_registro" do
    get :show, id: @chofer_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chofer_registro
    assert_response :success
  end

  test "should update chofer_registro" do
    patch :update, id: @chofer_registro, chofer_registro: { apellidos: @chofer_registro.apellidos, codigo: @chofer_registro.codigo, cuenta: @chofer_registro.cuenta, distrito: @chofer_registro.distrito, estado: @chofer_registro.estado, nombres: @chofer_registro.nombres, placa: @chofer_registro.placa, telefono: @chofer_registro.telefono }
    assert_redirected_to chofer_registro_path(assigns(:chofer_registro))
  end

  test "should destroy chofer_registro" do
    assert_difference('ChoferRegistro.count', -1) do
      delete :destroy, id: @chofer_registro
    end

    assert_redirected_to chofer_registros_path
  end
end
