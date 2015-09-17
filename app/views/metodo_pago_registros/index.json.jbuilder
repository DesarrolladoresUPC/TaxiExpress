json.array!(@metodo_pago_registros) do |metodo_pago_registro|
  json.extract! metodo_pago_registro, :id, :codigo, :nombre
  json.url metodo_pago_registro_url(metodo_pago_registro, format: :json)
end
