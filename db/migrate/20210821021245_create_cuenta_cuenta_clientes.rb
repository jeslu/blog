class CreateCuentaCuentaClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :cuenta_cuenta_clientes do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :fecha
      t.boolean :activo

      t.timestamps
    end
  end
end
