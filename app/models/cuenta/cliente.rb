class Cuenta::Cliente < ApplicationRecord
  self.table_name = "Cuenta_Clientes"
  belongs_to :Cliente

end
