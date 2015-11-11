class Egg < ActiveRecord::Base
  belongs_to :house
  has_one :offspring

  belongs_to :parents, class: Pair, foreign_key: :couple_id
end
