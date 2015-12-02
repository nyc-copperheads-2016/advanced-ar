class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.integer :female_id, null: false
      t.integer :male_id, null: false
    end
  end
end
