class RemoveEmailToClient < ActiveRecord::Migration
  def up
    remove_column :clients, :email_id
    remove_column :clients, :telefone_id
    add_column :clients, :email, :string
    drop_table :emails
    drop_table :telefones
    add_column :clients, :telefone, :string
  end

  def down
    remove_column :clients, :telefone, :string
    create_table :telefones
    create_table :emails
    remove_column :clients, :email
    add_column :clients, :email_id, :integer
    add_column :clients, :telefone_id, :integer
  end
end
