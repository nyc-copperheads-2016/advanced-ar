class Snake < ActiveRecord::Base
  # A snake has_one pair... let's stop this polyamorousness
  has_one :pair, foreign_key: :female_id # We need to tell the association about the FK here - it cannot infer it

  # AR looks at pair.mate to find this.  Since the name of the association is not snake, we need to tell AR that it's a Snake object by specifying 'class' here
  has_one :mate, through: :pair, class: Snake

  # This is a straightforward HasManyThrough relationship.  The fact that it is more than one table away does not matter.  AR will determine the path to get there by looking at the Pair association and following its associations
  has_many :eggs, through: :pair

  # Another has_many through relationship... but the Nest is really a House on the association.
  has_many :nests, through: :eggs, source: :house

  # We've named the foreign key to describe what the relationship is more clearly, so we have to tell it that the class is a House
  belongs_to :primary_house, class: House

  # We can name the relationship chicks here... we need to use the :source param to tell it where to look on the through association to find the record
  has_many :snakelings, through: :eggs, source: :offspring

  # Describe where we come from.  If we made the relationship "Offspring" that would be confusing (Isnt it already confusing enough?!?).  Lets name it "lineage" so that it accurately describes the direction we're going
  has_one :lineage, foreign_key: :progeny_id, class: Offspring

  # Once we have the previous relationship in place, we can get back to the parents... we still need to tell AR what class the parents object is (Pair)
  has_one :parents, through: :lineage, class: Pair
end
