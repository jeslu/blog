class Cuenta::Cotizacion < ApplicationRecord
    self.table_name = "cuenta_cotizaciones"
    
    belongs_to :Cuenta, :class_name => "Cuenta::CuentaCliente", :foreign_key => "cuenta_id"
    has_many :Productos, :class_name => "Producto::Producto", :foreign_key => "producto_id"

end
