class CreateCuentaClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :cuenta_clientes do |t|
      t.references :cliente, null: false, foreign_key: true
      t.boolean :activo

      t.timestamps
    end
  end
end
