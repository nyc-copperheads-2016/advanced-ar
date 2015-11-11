class Pair < ActiveRecord::Base
  # The other side of the has_one relationship is a belongs_to.
  #
  # Since the Pair has a .bird relationship, the class is known (Bird) but the FK cannot be inferred so we define it here
  belongs_to :bird, foreign_key: :player_1_id

  # Similarly to the bird relationship, we do the same but need to define the class (Bird) because it cannot be inferred
  belongs_to :mate, foreign_key: :player_2_id, class: Bird

  # We need to define the foreign_key here
  has_many :eggs, foreign_key: :couple_id
end
