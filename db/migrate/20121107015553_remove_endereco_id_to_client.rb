class RemoveEnderecoIdToClient < ActiveRecord::Migration
  def up
    remove_column :clients, :endereco_id
    add_column :clients, :cep, :string
    add_column :clients, :numero, :integer
  end

  def down
    add_column :clients, :endereco_id, :integer
    remove_column :clients, :numero
    remove_column :clients, :endereco
  end
end
