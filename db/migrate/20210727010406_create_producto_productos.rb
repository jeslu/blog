class CreateProductoProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :producto_productos do |t|
      t.string :barcode
      t.string :descripcion
      t.decimal :precio
      t.bigint :umedidas_id
      t.bigint :categorias_id

      t.timestamps
    end
  end
end
