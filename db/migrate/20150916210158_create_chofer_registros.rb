class CreateChoferRegistros < ActiveRecord::Migration
  def change
    create_table :chofer_registros do |t|
      t.string :codigo
      t.string :nombres
      t.string :apellidos
      t.integer :telefono
      t.string :distrito
      t.string :estado
      t.string :cuenta
      t.string :placa

      t.timestamps null: false
    end
  end
end
