class CreateClienteExistes < ActiveRecord::Migration
  def change
    create_table :cliente_existes do |t|
      t.integer :existe

      t.timestamps
    end
  end
end
