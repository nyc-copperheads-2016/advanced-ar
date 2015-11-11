class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.integer :player_1_id, null: false
      t.integer :player_2_id, null: false
    end
  end
end
