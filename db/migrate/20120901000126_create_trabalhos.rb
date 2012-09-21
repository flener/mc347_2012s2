class CreateTrabalhos < ActiveRecord::Migration
  def change
    create_table :trabalhos do |t|
      t.string :area_trabalho
      t.string :cargo
      t.integer :rendimento
      t.string :cliente_cpf

      t.timestamps
    end
  end
end
