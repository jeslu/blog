class Producto::Categoria < ApplicationRecord
    self.table_name = "Producto_Categorias"
    has_many :Categorias, :class_name => "Producto::Categoria", :foreign_key => "categoria_id"
end
