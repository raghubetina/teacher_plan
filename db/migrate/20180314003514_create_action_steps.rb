class CreateActionSteps < ActiveRecord::Migration
  def change
    create_table :action_steps do |t|
      t.text :description
      t.date :target_date
      t.text :resources_needed
      t.text :implementation_specifics
      t.text :measures_of_success
      t.integer :goal_id
      t.string :lead_person

      t.timestamps

    end
  end
end
