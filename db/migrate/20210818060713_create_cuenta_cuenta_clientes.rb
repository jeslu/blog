class CreateCuentaCuentaClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :cuenta_cuenta_clientes do |t|
      t.boolean :activo
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
