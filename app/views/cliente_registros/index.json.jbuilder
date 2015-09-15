json.array!(@cliente_registros) do |cliente_registro|
  json.extract! cliente_registro, :id, :nombre, :telefono, :apellido, :correo, :contrasena
  json.url cliente_registro_url(cliente_registro, format: :json)
end
