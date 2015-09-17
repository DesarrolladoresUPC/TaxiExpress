json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :codigo, :direccion_origen, :distrito_origen, :direccion_destino, :distrito_destino, :cantidad_pasajeros, :categoria, :tarifa_final, :metodo_pago, :estado, :chofer, :usuario, :created, :updated
  json.url reserva_url(reserva, format: :json)
end
