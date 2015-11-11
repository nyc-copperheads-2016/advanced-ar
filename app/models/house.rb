class House < ActiveRecord::Base
  has_many :eggs
  has_many :birds, foreign_key: :primary_house_id
end
