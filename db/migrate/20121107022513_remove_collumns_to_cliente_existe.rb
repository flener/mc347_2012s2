class RemoveCollumnsToClienteExiste < ActiveRecord::Migration
  def up
    remove_column :cliente_existes, :updated_at
    remove_column :cliente_existes, :created_at
    remove_column :cliente_existes, :id
    remove_column :cliente_enderecos, :updated_at
    remove_column :cliente_enderecos, :created_at
    remove_column :cliente_enderecos, :id
  end

  def down
    add_column :cliente_existes, :created_at, :string
    add_column :cliente_existes, :updated_at, :string
    add_column :cliente_existes, :id, :integer
    add_column :cliente_enderecos, :created_at, :string
    add_column :cliente_enderecos, :updated_at, :string
    add_column :cliente_enderecos, :id, :integer
  end
end
