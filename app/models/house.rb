class House < ActiveRecord::Base
  has_many :eggs
  # We need to define the foreign_key to make this relationship work
  has_many :birds, foreign_key: :primary_house_id
end
