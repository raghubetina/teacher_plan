class Goal < ApplicationRecord
  # Direct associations

  has_many   :goal_comments,
             :dependent => :destroy

  has_many   :action_steps,
             :dependent => :destroy

  belongs_to :improvement_plan

  # Indirect associations

  # Validations

  validates :description, :presence => true

end
