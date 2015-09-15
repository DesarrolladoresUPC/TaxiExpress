json.array!(@conductor_registros) do |conductor_registro|
  json.extract! conductor_registro, :id, :nombre, :telefono, :apellido, :correo, :contraseña, :codigo
  json.url conductor_registro_url(conductor_registro, format: :json)
end
