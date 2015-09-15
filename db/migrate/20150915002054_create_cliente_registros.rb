class CreateClienteRegistros < ActiveRecord::Migration
  def change
    create_table :cliente_registros do |t|
      t.string :nombre
      t.string :telefono
      t.string :apellido
      t.string :correo
      t.string :contrasena

      t.timestamps null: false
    end
  end
end
