class Pair < ActiveRecord::Base
  has_many :eggs, foreign_key: :couple_id
end
