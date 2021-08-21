class Cuenta::CuentaCliente < ApplicationRecord
  self.table_name = "cuenta_cuenta_clientes"
  belongs_to :cliente
  belongs_to :user
end
