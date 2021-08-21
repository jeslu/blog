class Producto::Producto < ApplicationRecord
    self.table_name = "producto_productos"
    belongs_to :Umedida, :class_name => "Producto::Umedida", :foreign_key => "umedida_id"
    belongs_to :Categoria, :class_name => "Producto::Categoria", :foreign_key => "categoria_id"
    
end
