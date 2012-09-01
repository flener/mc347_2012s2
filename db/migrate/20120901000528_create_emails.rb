class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.text :endereco
      t.string :cliente_cpf

      t.timestamps
    end
  end
end
