class CreateClienteEnderecos < ActiveRecord::Migration
  def change
    create_table :cliente_enderecos do |t|
      t.string :cep
      t.integer :numero

      t.timestamps
    end
  end
end
