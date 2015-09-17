json.array!(@categoria) do |categoria|
  json.extract! categoria, :id, :codigo, :nombre, :costo
  json.url categoria_url(categoria, format: :json)
end
