json.array!(@chofer_registros) do |chofer_registro|
  json.extract! chofer_registro, :id, :codigo, :nombres, :apellidos, :telefono, :distrito, :estado, :cuenta, :placa
  json.url chofer_registro_url(chofer_registro, format: :json)
end
