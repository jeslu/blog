json.extract! cuenta_cotizacion, :id, :cuenta_id, :producto_id, :cantidad, :total, :created_at, :updated_at
json.url cuenta_cotizacion_url(cuenta_cotizacion, format: :json)
