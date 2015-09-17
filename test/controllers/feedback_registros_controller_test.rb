require 'test_helper'

class FeedbackRegistrosControllerTest < ActionController::TestCase
  setup do
    @feedback_registro = feedback_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feedback_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feedback_registro" do
    assert_difference('FeedbackRegistro.count') do
      post :create, feedback_registro: { calificacion: @feedback_registro.calificacion, comentario: @feedback_registro.comentario, distrito: @feedback_registro.distrito }
    end

    assert_redirected_to feedback_registro_path(assigns(:feedback_registro))
  end

  test "should show feedback_registro" do
    get :show, id: @feedback_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feedback_registro
    assert_response :success
  end

  test "should update feedback_registro" do
    patch :update, id: @feedback_registro, feedback_registro: { calificacion: @feedback_registro.calificacion, comentario: @feedback_registro.comentario, distrito: @feedback_registro.distrito }
    assert_redirected_to feedback_registro_path(assigns(:feedback_registro))
  end

  test "should destroy feedback_registro" do
    assert_difference('FeedbackRegistro.count', -1) do
      delete :destroy, id: @feedback_registro
    end

    assert_redirected_to feedback_registros_path
  end
end
