class Cliente < ApplicationRecord
    self.table_name = "Clientes"
    has_many :Cuentas
    #expensive_clientes = Cliente.where("nombre = jesus")
    @cuentas = Cliente.joins(:Cuentas)
    
end
