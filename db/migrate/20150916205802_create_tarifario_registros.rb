class CreateTarifarioRegistros < ActiveRecord::Migration
  def change
    create_table :tarifario_registros do |t|
      t.string :distrito_origen
      t.string :distrito_origen
      t.decimal :tarifa

      t.timestamps null: false
    end
  end
end
