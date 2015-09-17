class RemoveCategoriaFromReservas < ActiveRecord::Migration
  def change
    remove_column :reservas, :categoria, :string
  end
end
