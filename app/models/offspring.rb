class Offspring < ActiveRecord::Base
  # Offspring singular and plural are the same...  set the table name to let AR know
  self.table_name = 'offspring'

  belongs_to :egg

  # The FK is not standard so we need to define it
  belongs_to :bird, foreign_key: :progeny_id
end
