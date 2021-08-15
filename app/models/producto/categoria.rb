class Producto::Categoria < ApplicationRecord
    self.table_name = "Producto_Categorias"
    has_many :Productos, :class_name => "Producto::Producto", :foreign_key => "categoria_id"
end
