require "application_system_test_case"

class Cuenta::CuentaClientesTest < ApplicationSystemTestCase
  setup do
    @cuenta_cuenta_cliente = cuenta_cuenta_clientes(:one)
  end

  test "visiting the index" do
    visit cuenta_cuenta_clientes_url
    assert_selector "h1", text: "Cuenta/Cuenta Clientes"
  end

  test "creating a Cuenta cliente" do
    visit cuenta_cuenta_clientes_url
    click_on "New Cuenta/Cuenta Cliente"

    check "Activo" if @cuenta_cuenta_cliente.activo
    fill_in "Cliente", with: @cuenta_cuenta_cliente.cliente_id
    click_on "Create Cuenta cliente"

    assert_text "Cuenta cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cuenta cliente" do
    visit cuenta_cuenta_clientes_url
    click_on "Edit", match: :first

    check "Activo" if @cuenta_cuenta_cliente.activo
    fill_in "Cliente", with: @cuenta_cuenta_cliente.cliente_id
    click_on "Update Cuenta cliente"

    assert_text "Cuenta cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cuenta cliente" do
    visit cuenta_cuenta_clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cuenta cliente was successfully destroyed"
  end
end
