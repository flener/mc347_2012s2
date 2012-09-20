class ReworkTable < ActiveRecord::Migration
  def up

    drop_table :trabalhos

    create_table :trabalho_areas do |ta|
        ta.string :area
    end
    create_table :trabalho_cargos do |tc|
        tc.string :cargo
    end
    create_table :trabalho_rendas do |tr|
        tr.string :renda
    end
    
  end

  def down
    create_table :trabalhos
    drop_table :trabalho_area
    drop_table :trabalho_cargo
    drop_table :trabalho_renda
  end
end
