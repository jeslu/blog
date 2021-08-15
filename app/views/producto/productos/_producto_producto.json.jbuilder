json.extract! producto_producto, :id, :barcode, :nombre, :descripcion, :precio, :umedida_id, :categoria_id, :created_at, :updated_at
json.url producto_producto_url(producto_producto, format: :json)
