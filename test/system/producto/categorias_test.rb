require "application_system_test_case"

class Producto::CategoriasTest < ApplicationSystemTestCase
  setup do
    @producto_categoria = producto_categorias(:one)
  end

  test "visiting the index" do
    visit producto_categorias_url
    assert_selector "h1", text: "Producto/Categorias"
  end

  test "creating a Categoria" do
    visit producto_categorias_url
    click_on "New Producto/Categoria"

    check "Activo" if @producto_categoria.activo
    fill_in "Categoria", with: @producto_categoria.categoria
    click_on "Create Categoria"

    assert_text "Categoria was successfully created"
    click_on "Back"
  end

  test "updating a Categoria" do
    visit producto_categorias_url
    click_on "Edit", match: :first

    check "Activo" if @producto_categoria.activo
    fill_in "Categoria", with: @producto_categoria.categoria
    click_on "Update Categoria"

    assert_text "Categoria was successfully updated"
    click_on "Back"
  end

  test "destroying a Categoria" do
    visit producto_categorias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categoria was successfully destroyed"
  end
end
