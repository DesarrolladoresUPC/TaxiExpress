require 'test_helper'

class TarifarioRegistrosControllerTest < ActionController::TestCase
  setup do
    @tarifario_registro = tarifario_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tarifario_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tarifario_registro" do
    assert_difference('TarifarioRegistro.count') do
      post :create, tarifario_registro: { distrito_origen: @tarifario_registro.distrito_origen, distrito_origen: @tarifario_registro.distrito_origen, tarifa: @tarifario_registro.tarifa }
    end

    assert_redirected_to tarifario_registro_path(assigns(:tarifario_registro))
  end

  test "should show tarifario_registro" do
    get :show, id: @tarifario_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tarifario_registro
    assert_response :success
  end

  test "should update tarifario_registro" do
    patch :update, id: @tarifario_registro, tarifario_registro: { distrito_origen: @tarifario_registro.distrito_origen, distrito_origen: @tarifario_registro.distrito_origen, tarifa: @tarifario_registro.tarifa }
    assert_redirected_to tarifario_registro_path(assigns(:tarifario_registro))
  end

  test "should destroy tarifario_registro" do
    assert_difference('TarifarioRegistro.count', -1) do
      delete :destroy, id: @tarifario_registro
    end

    assert_redirected_to tarifario_registros_path
  end
end
