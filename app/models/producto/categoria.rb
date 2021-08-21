class Producto::Categoria < ApplicationRecord
    self.table_name = "producto_categorias"
    has_many :Productos, :class_name => "Producto::Producto", :foreign_key => "categoria_id"
end
