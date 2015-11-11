class Offspring < ActiveRecord::Base
  # Offspring singular and plural are the same...  set the table name to let AR know
  self.table_name = 'offspring'

  belongs_to :egg

  # The FK is not standard so we need to define it.  This is the bird that the offspring is, not the parent
  belongs_to :bird, foreign_key: :progeny_id

  # Again we need to tell AR we have one "Parents" - and its a Pair object
  has_one :parents, through: :egg, class: Pair
end
