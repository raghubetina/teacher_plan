class User < ApplicationRecord
  # Direct associations

  has_many   :goal_comments,
             :dependent => :destroy

  has_many   :plan_comments,
             :dependent => :destroy

  has_many   :coachings,
             :foreign_key => "coach_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :trainee_improvement_plans,
             :through => :coachings,
             :source => :improvement_plan

  # Validations

  validates :first_name, :presence => true

  validates :last_name, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
