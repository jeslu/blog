json.extract! producto_producto, :id, :barcode, :descripcion, :precio, :umedidas_id, :categorias_id, :created_at, :updated_at
json.url producto_producto_url(producto_producto, format: :json)
