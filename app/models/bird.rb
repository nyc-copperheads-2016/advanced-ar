class Bird < ActiveRecord::Base
  # A bird has_one pair... let's stop this polyamorousness
  has_one :pair, foreign_key: :player_1_id # We need to tell the association about the FK here - it cannot infer it

  # AR looks at pair.mate to find this.  Since the name of the association is not Bird, we need to tell AR that it's a Bird object by specifying 'class' here
  has_one :mate, through: :pair, class: Bird

  # This is a straightforward HasManyThrough relationship.  The fact that it is more than one table away does not matter.  AR will determine the path to get there by looking at the Pair association and following its associations
  has_many :eggs, through: :pair

  # Another has_many through relationship... but the Nest is really a House on the association.
  has_many :nests, through: :eggs, source: :house

  # We've named the foreign key to describe what the relationship is more clearly, so we have to tell it that the class is a House
  belongs_to :primary_house, class: House

  # We can name the relationship chicks here... we need to use the :source param to tell it where to look on the through association to find the record
  has_many :chicks, through: :eggs, source: :offspring
end
