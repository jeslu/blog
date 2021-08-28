class CreateCuentaCotizaciones < ActiveRecord::Migration[6.0]
  def change
    create_table :cuenta_cotizaciones do |t|
      t.bigint :cuenta_id
      t.bigint :producto_id
      t.integer :cantidad
      t.decimal :total

      t.timestamps
    end
  end
end
