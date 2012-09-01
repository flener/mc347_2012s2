class AddAtivoToClient < ActiveRecord::Migration
  def change
    add_column :clients, :ativo, :boolean
  end
end
