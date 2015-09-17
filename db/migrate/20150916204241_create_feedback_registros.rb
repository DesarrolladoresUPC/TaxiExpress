class CreateFeedbackRegistros < ActiveRecord::Migration
  def change
    create_table :feedback_registros do |t|
      t.float :calificacion
      t.string :comentario
      t.string :distrito

      t.timestamps null: false
    end
  end
end
