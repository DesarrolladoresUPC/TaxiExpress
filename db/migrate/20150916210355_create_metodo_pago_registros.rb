class CreateMetodoPagoRegistros < ActiveRecord::Migration
  def change
    create_table :metodo_pago_registros do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps null: false
    end
  end
end
