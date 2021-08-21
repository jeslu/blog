class Producto::Umedida < ApplicationRecord
    self.table_name = "producto_umedidas"
    has_many :Productos, :class_name => "Producto::Producto", :foreign_key => "umedida_id"    
end
