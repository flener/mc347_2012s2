class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.string :numero
      t.string :cliente_cpf

      t.timestamps
    end
  end
end
