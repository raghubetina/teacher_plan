class Goal < ApplicationRecord
  # Direct associations

  belongs_to :improvement_plan

  # Indirect associations

  # Validations

  validates :description, :presence => true

end
