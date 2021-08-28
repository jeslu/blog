require "application_system_test_case"

class Cuenta::CotizacionesTest < ApplicationSystemTestCase
  setup do
    @cuenta_cotizacion = cuenta_cotizaciones(:one)
  end

  test "visiting the index" do
    visit cuenta_cotizaciones_url
    assert_selector "h1", text: "Cuenta/Cotizaciones"
  end

  test "creating a Cotizacion" do
    visit cuenta_cotizaciones_url
    click_on "New Cuenta/Cotizacion"

    fill_in "Cantidad", with: @cuenta_cotizacion.cantidad
    fill_in "Cuenta", with: @cuenta_cotizacion.cuenta_id
    fill_in "Producto", with: @cuenta_cotizacion.producto_id
    fill_in "Total", with: @cuenta_cotizacion.total
    click_on "Create Cotizacion"

    assert_text "Cotizacion was successfully created"
    click_on "Back"
  end

  test "updating a Cotizacion" do
    visit cuenta_cotizaciones_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @cuenta_cotizacion.cantidad
    fill_in "Cuenta", with: @cuenta_cotizacion.cuenta_id
    fill_in "Producto", with: @cuenta_cotizacion.producto_id
    fill_in "Total", with: @cuenta_cotizacion.total
    click_on "Update Cotizacion"

    assert_text "Cotizacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Cotizacion" do
    visit cuenta_cotizaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cotizacion was successfully destroyed"
  end
end
