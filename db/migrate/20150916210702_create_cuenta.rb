class CreateCuenta < ActiveRecord::Migration
  def change
    create_table :cuenta do |t|
      t.string :correo
      t.string :password

      t.timestamps null: false
    end
  end
end
