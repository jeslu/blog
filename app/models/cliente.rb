class Cliente < ApplicationRecord
    self.table_name = "Clientes"
    has_many :Cuentas
end
