class CreateProductoCategorias < ActiveRecord::Migration[6.0]
  def change
    create_table :producto_categorias do |t|
      t.string :categoria
      t.boolean :activo

      t.timestamps
    end
  end
end
