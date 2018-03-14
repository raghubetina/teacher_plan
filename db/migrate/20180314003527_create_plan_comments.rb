class CreatePlanComments < ActiveRecord::Migration
  def change
    create_table :plan_comments do |t|
      t.integer :user_id
      t.text :body
      t.integer :improvement_plan_id

      t.timestamps

    end
  end
end
