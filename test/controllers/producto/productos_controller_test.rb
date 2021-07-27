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
      post producto_productos_url, params: { producto_producto: { barcode: @producto_producto.barcode, categorias_id: @producto_producto.categorias_id, descripcion: @producto_producto.descripcion, precio: @producto_producto.precio, umedidas_id: @producto_producto.umedidas_id } }
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
    patch producto_producto_url(@producto_producto), params: { producto_producto: { barcode: @producto_producto.barcode, categorias_id: @producto_producto.categorias_id, descripcion: @producto_producto.descripcion, precio: @producto_producto.precio, umedidas_id: @producto_producto.umedidas_id } }
    assert_redirected_to producto_producto_url(@producto_producto)
  end

  test "should destroy producto_producto" do
    assert_difference('Producto::Producto.count', -1) do
      delete producto_producto_url(@producto_producto)
    end

    assert_redirected_to producto_productos_url
  end
end
