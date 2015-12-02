class Snake < ActiveRecord::Base
  has_one :pair, foreign_key: :female_id
  has_one :mate, through: :pair, class: Snake, foreign_key: :male_id

  has_many :eggs, through: :pair

  belongs_to :house
end
