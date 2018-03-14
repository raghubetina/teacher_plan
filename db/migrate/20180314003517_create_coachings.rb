class CreateCoachings < ActiveRecord::Migration
  def change
    create_table :coachings do |t|
      t.integer :improvement_plan_id
      t.integer :coach_id

      t.timestamps

    end
  end
end
