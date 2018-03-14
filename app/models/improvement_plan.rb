class ImprovementPlan < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :title, :presence => true

  validates :user_id, :presence => true

end
