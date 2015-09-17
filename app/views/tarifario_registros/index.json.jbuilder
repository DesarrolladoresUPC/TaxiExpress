json.array!(@tarifario_registros) do |tarifario_registro|
  json.extract! tarifario_registro, :id, :distrito_origen, :distrito_origen, :tarifa
  json.url tarifario_registro_url(tarifario_registro, format: :json)
end
