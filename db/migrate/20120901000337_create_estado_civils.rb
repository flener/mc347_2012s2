class CreateEstadoCivils < ActiveRecord::Migration
  def change
    create_table :estado_civils do |t|
      t.string :cpf_conjuge
      t.string :cliente_cpf

      t.timestamps
    end
  end
end
