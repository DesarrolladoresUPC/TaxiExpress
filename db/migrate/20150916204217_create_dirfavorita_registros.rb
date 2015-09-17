class CreateDirfavoritaRegistros < ActiveRecord::Migration
  def change
    create_table :dirfavorita_registros do |t|
      t.string :nombre
      t.string :dirfavorita
      t.string :distrito

      t.timestamps null: false
    end
  end
end
