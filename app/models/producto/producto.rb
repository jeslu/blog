class Producto::Producto < ApplicationRecord
    self.table_name = "Producto_Productos"#Renombrar la tabla en rails
    #Associaciones
    belongs_to :Categoria, :class_name => "Producto::Categoria", :foreign_key => "categoria_id"
    belongs_to :Umedida, :class_name => "Producto::Umedida", :foreign_key => "umedida_id"


end
