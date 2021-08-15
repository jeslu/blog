class CreateProductoProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :producto_productos do |t|
      t.string :barcode
      t.string :nombre
      t.string :descripcion
      t.decimal :precio
      t.bigint :umedida_id
      t.bigint :categoria_id

      t.timestamps
    end
  end
end
