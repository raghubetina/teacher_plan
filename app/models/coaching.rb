class Coaching < ApplicationRecord
  # Direct associations

  belongs_to :improvement_plan

  belongs_to :coach,
             :class_name => "User"

  # Indirect associations

  # Validations

end
