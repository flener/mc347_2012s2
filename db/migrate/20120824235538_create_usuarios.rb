class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :cep
      t.string :endereco
      t.string :pai
      t.string :mae
      t.date :data_nasc
      t.string :local_nasc
      t.string :estado_civil
      t.string :cpf_conjugue
      t.string :area_trab
      t.string :cargo
      t.integer :renda
      t.string :email
      t.string :telefone
      t.text :hobbies
      t.integer :filhos
      t.string :religiao

      t.timestamps
    end
  end
end
