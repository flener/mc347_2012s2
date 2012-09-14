class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :cpf
      t.string :nome
      t.string :rg
      t.string :nome_pai
      t.string :nome_mae
      t.date :data_nascimento
      t.string :local_nascimento
      t.integer :quantidade_filhos
      t.text :observacoes
      t.integer :endereco_id
      t.integer :religiao_id
      t.integer :hobby_id
      t.integer :email_id
      t.integer :telefone_id
      t.integer :trabalho_id
      t.integer :estado_civil_id
      t.integer :ativo

      t.timestamps
    end
  end
end
