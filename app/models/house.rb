class House < ActiveRecord::Base
  has_many :snakes
  has_many :eggs
end
