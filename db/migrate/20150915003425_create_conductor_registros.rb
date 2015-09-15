class CreateConductorRegistros < ActiveRecord::Migration
  def change
    create_table :conductor_registros do |t|
      t.string :nombre
      t.string :telefono
      t.string :apellido
      t.string :correo
      t.string :contraseña
      t.string :codigo

      t.timestamps null: false
    end
  end
end
