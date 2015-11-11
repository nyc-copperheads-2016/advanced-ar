class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.integer :max_occupancy, null: false, default: 0
    end
  end
end
