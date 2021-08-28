require 'test_helper'

class Cuenta::CotizacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuenta_cotizacion = cuenta_cotizaciones(:one)
  end

  test "should get index" do
    get cuenta_cotizaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_cuenta_cotizacion_url
    assert_response :success
  end

  test "should create cuenta_cotizacion" do
    assert_difference('Cuenta::Cotizacion.count') do
      post cuenta_cotizaciones_url, params: { cuenta_cotizacion: { cantidad: @cuenta_cotizacion.cantidad, cuenta_id: @cuenta_cotizacion.cuenta_id, producto_id: @cuenta_cotizacion.producto_id, total: @cuenta_cotizacion.total } }
    end

    assert_redirected_to cuenta_cotizacion_url(Cuenta::Cotizacion.last)
  end

  test "should show cuenta_cotizacion" do
    get cuenta_cotizacion_url(@cuenta_cotizacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuenta_cotizacion_url(@cuenta_cotizacion)
    assert_response :success
  end

  test "should update cuenta_cotizacion" do
    patch cuenta_cotizacion_url(@cuenta_cotizacion), params: { cuenta_cotizacion: { cantidad: @cuenta_cotizacion.cantidad, cuenta_id: @cuenta_cotizacion.cuenta_id, producto_id: @cuenta_cotizacion.producto_id, total: @cuenta_cotizacion.total } }
    assert_redirected_to cuenta_cotizacion_url(@cuenta_cotizacion)
  end

  test "should destroy cuenta_cotizacion" do
    assert_difference('Cuenta::Cotizacion.count', -1) do
      delete cuenta_cotizacion_url(@cuenta_cotizacion)
    end

    assert_redirected_to cuenta_cotizaciones_url
  end
end
