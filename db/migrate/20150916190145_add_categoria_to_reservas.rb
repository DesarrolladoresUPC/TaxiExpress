class AddCategoriaToReservas < ActiveRecord::Migration
  def change
    add_reference :reservas, :categoria, index: true
  end
end
