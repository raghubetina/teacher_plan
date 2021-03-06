class ImprovementPlan < ApplicationRecord
  # Direct associations

  belongs_to :status

  has_many   :plan_comments,
             :dependent => :destroy

  has_many   :goals,
             :dependent => :destroy

  has_many   :coachings,
             :dependent => :destroy

  # Indirect associations

  has_many   :coaches,
             :through => :coachings,
             :source => :coach

  # Validations

  validates :title, :uniqueness => { :scope => [:user_id] }

  validates :title, :presence => true

  validates :user_id, :presence => true

end
