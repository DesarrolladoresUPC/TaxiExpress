json.array!(@distritos) do |distrito|
  json.extract! distrito, :id, :codigo, :nombre
  json.url distrito_url(distrito, format: :json)
end
