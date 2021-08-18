require "application_system_test_case"

class Cuenta::ClientesTest < ApplicationSystemTestCase
  setup do
    @cuenta_cliente = cuenta_clientes(:one)
  end

  test "visiting the index" do
    visit cuenta_clientes_url
    assert_selector "h1", text: "Cuenta/Clientes"
  end

  test "creating a Cliente" do
    visit cuenta_clientes_url
    click_on "New Cuenta/Cliente"

    check "Activo" if @cuenta_cliente.activo
    fill_in "Cliente", with: @cuenta_cliente.cliente_id
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cliente" do
    visit cuenta_clientes_url
    click_on "Edit", match: :first

    check "Activo" if @cuenta_cliente.activo
    fill_in "Cliente", with: @cuenta_cliente.cliente_id
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente" do
    visit cuenta_clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end
