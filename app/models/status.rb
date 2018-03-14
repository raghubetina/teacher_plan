class Status < ApplicationRecord
  # Direct associations

  has_many   :improvement_plans,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
