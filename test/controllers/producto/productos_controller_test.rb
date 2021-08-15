require 'test_helper'

class Producto::ProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto_producto = producto_productos(:one)
  end

  test "should get index" do
    get producto_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_producto_url
    assert_response :success
  end

  test "should create producto_producto" do
    assert_difference('Producto::Producto.count') do
      post producto_productos_url, params: { producto_producto: { barcode: @producto_producto.barcode, categoria_id: @producto_producto.categoria_id, descripcion: @producto_producto.descripcion, nombre: @producto_producto.nombre, precio: @producto_producto.precio, umedida_id: @producto_producto.umedida_id } }
    end

    assert_redirected_to producto_producto_url(Producto::Producto.last)
  end

  test "should show producto_producto" do
    get producto_producto_url(@producto_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_producto_url(@producto_producto)
    assert_response :success
  end

  test "should update producto_producto" do
    patch producto_producto_url(@producto_producto), params: { producto_producto: { barcode: @producto_producto.barcode, categoria_id: @producto_producto.categoria_id, descripcion: @producto_producto.descripcion, nombre: @producto_producto.nombre, precio: @producto_producto.precio, umedida_id: @producto_producto.umedida_id } }
    assert_redirected_to producto_producto_url(@producto_producto)
  end

  test "should destroy producto_producto" do
    assert_difference('Producto::Producto.count', -1) do
      delete producto_producto_url(@producto_producto)
    end

    assert_redirected_to producto_productos_url
  end
end
