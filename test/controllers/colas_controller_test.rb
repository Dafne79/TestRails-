require 'test_helper'

class ColasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cola = colas(:one)
  end

  test "should get index" do
    get colas_url
    assert_response :success
  end

  test "should get new" do
    get new_cola_url
    assert_response :success
  end

  test "should create cola" do
    assert_difference('Cola.count') do
      post colas_url, params: { cola: { cantidadPersonas: @cola.cantidadPersonas, nombreCliente: @cola.nombreCliente } }
    end

    assert_redirected_to cola_url(Cola.last)
  end

  test "should show cola" do
    get cola_url(@cola)
    assert_response :success
  end

  test "should get edit" do
    get edit_cola_url(@cola)
    assert_response :success
  end

  test "should update cola" do
    patch cola_url(@cola), params: { cola: { cantidadPersonas: @cola.cantidadPersonas, nombreCliente: @cola.nombreCliente } }
    assert_redirected_to cola_url(@cola)
  end

  test "should destroy cola" do
    assert_difference('Cola.count', -1) do
      delete cola_url(@cola)
    end

    assert_redirected_to colas_url
  end
end
