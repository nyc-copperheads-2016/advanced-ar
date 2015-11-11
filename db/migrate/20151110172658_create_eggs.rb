class CreateEggs < ActiveRecord::Migration
  def change
    create_table :eggs do |t|
      t.belongs_to :couple, null: false
      t.belongs_to :house, null: false
      t.integer :size, null: false
    end
  end
end
