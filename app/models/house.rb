class House < ActiveRecord::Base
  has_many :snakes
  has_many :eggs

  # We need to define the foreign_key to make this relationship work
  has_many :snakes, foreign_key: :primary_house_id
end
