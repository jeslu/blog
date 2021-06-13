class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido_p
      t.string :apellido_m
      t.string :direccion
      t.bigint :numero

      t.timestamps
    end
  end
end
