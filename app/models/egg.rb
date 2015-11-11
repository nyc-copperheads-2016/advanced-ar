class Egg < ActiveRecord::Base
  belongs_to :house
  has_one :offspring
end
