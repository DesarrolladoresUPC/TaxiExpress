json.array!(@operador_registros) do |operador_registro|
  json.extract! operador_registro, :id, :codigo, :nombres, :apellidos, :telefono, :cuenta
  json.url operador_registro_url(operador_registro, format: :json)
end
