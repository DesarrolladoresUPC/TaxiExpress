json.array!(@feedback_registros) do |feedback_registro|
  json.extract! feedback_registro, :id, :calificacion, :comentario, :distrito
  json.url feedback_registro_url(feedback_registro, format: :json)
end
