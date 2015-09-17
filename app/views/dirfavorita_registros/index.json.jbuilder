json.array!(@dirfavorita_registros) do |dirfavorita_registro|
  json.extract! dirfavorita_registro, :id, :nombre, :dirfavorita, :distrito
  json.url dirfavorita_registro_url(dirfavorita_registro, format: :json)
end
