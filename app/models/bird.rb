class Bird < ActiveRecord::Base
  has_many :pairs, foreign_key: :player_1_id
  has_many :eggs, through: :pairs
  has_many :nests, through: :eggs, source: :house
  belongs_to :primary_house, class: House
end
