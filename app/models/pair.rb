class Pair < ActiveRecord::Base
  # The other side of the has_one relationship is a belongs_to.
  #
  # Since the Pair has a .bird relationship, the class is known (Snake) but the FK cannot be inferred so we define it here
  belongs_to :snake, foreign_key: :female_id

  # Similarly to the Snake relationship, we do the same but need to define the class (Snake) because it cannot be inferred
  belongs_to :mate, foreign_key: :male_id, class: Snake

  # We need to define the foreign_key here
  has_many :eggs, foreign_key: :couple_id
end
