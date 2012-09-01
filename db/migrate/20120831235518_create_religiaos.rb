class CreateReligiaos < ActiveRecord::Migration
  def change
    create_table :religiaos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
