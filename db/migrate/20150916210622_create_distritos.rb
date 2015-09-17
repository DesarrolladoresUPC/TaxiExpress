class CreateDistritos < ActiveRecord::Migration
  def change
    create_table :distritos do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps null: false
    end
  end
end
