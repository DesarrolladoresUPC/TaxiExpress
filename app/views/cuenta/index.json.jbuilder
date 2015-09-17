json.array!(@cuenta) do |cuentum|
  json.extract! cuentum, :id, :correo, :password
  json.url cuentum_url(cuentum, format: :json)
end
