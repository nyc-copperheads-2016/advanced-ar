class Pair < ActiveRecord::Base
  belongs_to :mate, foreign_key: :male_id, class: Snake

  has_many :eggs, foreign_key: :couple_id
end
