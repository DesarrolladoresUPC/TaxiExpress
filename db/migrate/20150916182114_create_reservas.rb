class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.string :codigo
      t.string :direccion_origen
      t.string :distrito_origen
      t.string :direccion_destino
      t.string :distrito_destino
      t.integer :cantidad_pasajeros
      t.string :categoria
      t.decimal :tarifa_final
      t.string :metodo_pago
      t.string :estado
      t.string :chofer
      t.string :usuario
      t.datetime :created
      t.datetime :updated

      t.timestamps null: false
    end
  end
end
