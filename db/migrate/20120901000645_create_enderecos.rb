class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.string :estado
      t.string :cidade
      t.string :bairro
      t.string :rua
      t.string :cliente_cpf

      t.timestamps
    end
  end
end
