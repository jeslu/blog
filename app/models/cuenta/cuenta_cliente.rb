class Cuenta::CuentaCliente < ApplicationRecord
  self.table_name = "cuenta_cuenta_clientes"
  
  belongs_to :cliente, :class_name => "Cliente", :foreign_key => "cliente_id"
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  has_many :Cotizaciones, :class_name => "Cuenta::Cotizacion", :foreign_key => "cuenta_id"
end
