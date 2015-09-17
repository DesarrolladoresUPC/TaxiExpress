json.array!(@vehiculo_registros) do |vehiculo_registro|
  json.extract! vehiculo_registro, :id, :placa, :marca, :modelo, :color, :categoria
  json.url vehiculo_registro_url(vehiculo_registro, format: :json)
end
