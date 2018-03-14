class ImprovementPlan < ApplicationRecord
  # Direct associations

  has_many   :coachings,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :title, :uniqueness => { :scope => [:user_id] }

  validates :title, :presence => true

  validates :user_id, :presence => true

end
