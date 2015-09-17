class CreateVehiculoRegistros < ActiveRecord::Migration
  def change
    create_table :vehiculo_registros do |t|
      t.string :placa
      t.string :marca
      t.string :modelo
      t.string :color
      t.string :categoria

      t.timestamps null: false
    end
  end
end
