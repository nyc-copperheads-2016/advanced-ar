class CreateOffspring < ActiveRecord::Migration
  def change
    create_table :offspring do |t|
      t.references :egg, null: false
      t.references :progeny, null: false
    end
  end
end
