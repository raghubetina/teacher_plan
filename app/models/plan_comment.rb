class PlanComment < ApplicationRecord
  # Direct associations

  belongs_to :improvement_plan

  belongs_to :user

  # Indirect associations

  # Validations

end
