class Egg < ActiveRecord::Base
  belongs_to :pair, foreign_key: :couple_id
  belongs_to :house
end
