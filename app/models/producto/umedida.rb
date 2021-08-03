class Producto::Umedida < ApplicationRecord
    self.table_name = "Producto_Umedidas"
    has_many :Umedidas, :class_name => "Producto::Umedidas", :foreign_key => "umedida_id"    
end
