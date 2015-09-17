class CreateOperadorRegistros < ActiveRecord::Migration
  def change
    create_table :operador_registros do |t|
      t.string :codigo
      t.string :nombres
      t.string :apellidos
      t.integer :telefono
      t.string :cuenta

      t.timestamps null: false
    end
  end
end
