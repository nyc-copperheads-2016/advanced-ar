class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :name, null: false
      t.string :color, null: false
      t.string :sex, null: false
      t.integer :primary_house_id
    end
  end
end
