require 'test_helper'

class Cuenta::CuentaClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuenta_cuenta_cliente = cuenta_cuenta_clientes(:one)
  end

  test "should get index" do
    get cuenta_cuenta_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_cuenta_cuenta_cliente_url
    assert_response :success
  end

  test "should create cuenta_cuenta_cliente" do
    assert_difference('Cuenta::CuentaCliente.count') do
      post cuenta_cuenta_clientes_url, params: { cuenta_cuenta_cliente: { activo: @cuenta_cuenta_cliente.activo, cliente_id: @cuenta_cuenta_cliente.cliente_id } }
    end

    assert_redirected_to cuenta_cuenta_cliente_url(Cuenta::CuentaCliente.last)
  end

  test "should show cuenta_cuenta_cliente" do
    get cuenta_cuenta_cliente_url(@cuenta_cuenta_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuenta_cuenta_cliente_url(@cuenta_cuenta_cliente)
    assert_response :success
  end

  test "should update cuenta_cuenta_cliente" do
    patch cuenta_cuenta_cliente_url(@cuenta_cuenta_cliente), params: { cuenta_cuenta_cliente: { activo: @cuenta_cuenta_cliente.activo, cliente_id: @cuenta_cuenta_cliente.cliente_id } }
    assert_redirected_to cuenta_cuenta_cliente_url(@cuenta_cuenta_cliente)
  end

  test "should destroy cuenta_cuenta_cliente" do
    assert_difference('Cuenta::CuentaCliente.count', -1) do
      delete cuenta_cuenta_cliente_url(@cuenta_cuenta_cliente)
    end

    assert_redirected_to cuenta_cuenta_clientes_url
  end
end
