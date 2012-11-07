class CreateRests < ActiveRecord::Migration
  def change
    create_table :rests do |t|

      t.timestamps
    end
  end
end
