class GoalComment < ApplicationRecord
  # Direct associations

  belongs_to :goal

  belongs_to :user

  # Indirect associations

  # Validations

  validates :body, :presence => true

end
