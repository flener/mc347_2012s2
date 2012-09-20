class RemoveTrabalhoIdToClient < ActiveRecord::Migration
  def up
    remove_column :clients, :trabalho_id
    add_column :clients, :trabalho_renda_id, :string
    add_column :clients, :trabalho_cargo_id, :string
    add_column :clients, :trabalho_area_id, :string
  end

  def down
    remove_column :clients, :trabalho_area_id
    remove_column :clients, :trabalho_cargo_id
    remove_column :clients, :trabalho_renda_id
    add_column :clients, :trabalho_id, :string
  end
end
