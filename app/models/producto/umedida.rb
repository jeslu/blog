class Producto::Umedida < ApplicationRecord
    self.table_name = "Producto_Umedidas"
    has_many :Productos, :class_name => "Producto::Producto", :foreign_key => "umedida_id"    
end
