require "application_system_test_case"

class Producto::ProductosTest < ApplicationSystemTestCase
  setup do
    @producto_producto = producto_productos(:one)
  end

  test "visiting the index" do
    visit producto_productos_url
    assert_selector "h1", text: "Producto/Productos"
  end

  test "creating a Producto" do
    visit producto_productos_url
    click_on "New Producto/Producto"

    fill_in "Barcode", with: @producto_producto.barcode
    fill_in "Categoria", with: @producto_producto.categoria_id
    fill_in "Descripcion", with: @producto_producto.descripcion
    fill_in "Nombre", with: @producto_producto.nombre
    fill_in "Precio", with: @producto_producto.precio
    fill_in "Umedida", with: @producto_producto.umedida_id
    click_on "Create Producto"

    assert_text "Producto was successfully created"
    click_on "Back"
  end

  test "updating a Producto" do
    visit producto_productos_url
    click_on "Edit", match: :first

    fill_in "Barcode", with: @producto_producto.barcode
    fill_in "Categoria", with: @producto_producto.categoria_id
    fill_in "Descripcion", with: @producto_producto.descripcion
    fill_in "Nombre", with: @producto_producto.nombre
    fill_in "Precio", with: @producto_producto.precio
    fill_in "Umedida", with: @producto_producto.umedida_id
    click_on "Update Producto"

    assert_text "Producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Producto" do
    visit producto_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Producto was successfully destroyed"
  end
end
