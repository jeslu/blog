require "application_system_test_case"

class Producto::UmedidasTest < ApplicationSystemTestCase
  setup do
    @producto_umedida = producto_umedidas(:one)
  end

  test "visiting the index" do
    visit producto_umedidas_url
    assert_selector "h1", text: "Producto/Umedidas"
  end

  test "creating a Umedida" do
    visit producto_umedidas_url
    click_on "New Producto/Umedida"

    check "Activo" if @producto_umedida.activo
    fill_in "Medida", with: @producto_umedida.medida
    click_on "Create Umedida"

    assert_text "Umedida was successfully created"
    click_on "Back"
  end

  test "updating a Umedida" do
    visit producto_umedidas_url
    click_on "Edit", match: :first

    check "Activo" if @producto_umedida.activo
    fill_in "Medida", with: @producto_umedida.medida
    click_on "Update Umedida"

    assert_text "Umedida was successfully updated"
    click_on "Back"
  end

  test "destroying a Umedida" do
    visit producto_umedidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Umedida was successfully destroyed"
  end
end
