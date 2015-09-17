require 'test_helper'

class ReservasControllerTest < ActionController::TestCase
  setup do
    @reserva = reservas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserva" do
    assert_difference('Reserva.count') do
      post :create, reserva: { cantidad_pasajeros: @reserva.cantidad_pasajeros, categoria: @reserva.categoria, chofer: @reserva.chofer, codigo: @reserva.codigo, created: @reserva.created, direccion_destino: @reserva.direccion_destino, direccion_origen: @reserva.direccion_origen, distrito_destino: @reserva.distrito_destino, distrito_origen: @reserva.distrito_origen, estado: @reserva.estado, metodo_pago: @reserva.metodo_pago, tarifa_final: @reserva.tarifa_final, updated: @reserva.updated, usuario: @reserva.usuario }
    end

    assert_redirected_to reserva_path(assigns(:reserva))
  end

  test "should show reserva" do
    get :show, id: @reserva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserva
    assert_response :success
  end

  test "should update reserva" do
    patch :update, id: @reserva, reserva: { cantidad_pasajeros: @reserva.cantidad_pasajeros, categoria: @reserva.categoria, chofer: @reserva.chofer, codigo: @reserva.codigo, created: @reserva.created, direccion_destino: @reserva.direccion_destino, direccion_origen: @reserva.direccion_origen, distrito_destino: @reserva.distrito_destino, distrito_origen: @reserva.distrito_origen, estado: @reserva.estado, metodo_pago: @reserva.metodo_pago, tarifa_final: @reserva.tarifa_final, updated: @reserva.updated, usuario: @reserva.usuario }
    assert_redirected_to reserva_path(assigns(:reserva))
  end

  test "should destroy reserva" do
    assert_difference('Reserva.count', -1) do
      delete :destroy, id: @reserva
    end

    assert_redirected_to reservas_path
  end
end
