class ActionStep < ApplicationRecord
  # Direct associations

  belongs_to :goal

  # Indirect associations

  # Validations

  validates :description, :presence => true

end
