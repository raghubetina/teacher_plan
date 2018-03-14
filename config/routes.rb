Rails.application.routes.draw do
  # Routes for the Plan_comment resource:
  # CREATE
  get "/plan_comments/new", :controller => "plan_comments", :action => "new"
  post "/create_plan_comment", :controller => "plan_comments", :action => "create"

  # READ
  get "/plan_comments", :controller => "plan_comments", :action => "index"
  get "/plan_comments/:id", :controller => "plan_comments", :action => "show"

  # UPDATE
  get "/plan_comments/:id/edit", :controller => "plan_comments", :action => "edit"
  post "/update_plan_comment/:id", :controller => "plan_comments", :action => "update"

  # DELETE
  get "/delete_plan_comment/:id", :controller => "plan_comments", :action => "destroy"
  #------------------------------

  # Routes for the Status resource:
  # CREATE
  get "/statuses/new", :controller => "statuses", :action => "new"
  post "/create_status", :controller => "statuses", :action => "create"

  # READ
  get "/statuses", :controller => "statuses", :action => "index"
  get "/statuses/:id", :controller => "statuses", :action => "show"

  # UPDATE
  get "/statuses/:id/edit", :controller => "statuses", :action => "edit"
  post "/update_status/:id", :controller => "statuses", :action => "update"

  # DELETE
  get "/delete_status/:id", :controller => "statuses", :action => "destroy"
  #------------------------------

  # Routes for the Goal resource:
  # CREATE
  get "/goals/new", :controller => "goals", :action => "new"
  post "/create_goal", :controller => "goals", :action => "create"

  # READ
  get "/goals", :controller => "goals", :action => "index"
  get "/goals/:id", :controller => "goals", :action => "show"

  # UPDATE
  get "/goals/:id/edit", :controller => "goals", :action => "edit"
  post "/update_goal/:id", :controller => "goals", :action => "update"

  # DELETE
  get "/delete_goal/:id", :controller => "goals", :action => "destroy"
  #------------------------------

  # Routes for the Coaching resource:
  # CREATE
  get "/coachings/new", :controller => "coachings", :action => "new"
  post "/create_coaching", :controller => "coachings", :action => "create"

  # READ
  get "/coachings", :controller => "coachings", :action => "index"
  get "/coachings/:id", :controller => "coachings", :action => "show"

  # UPDATE
  get "/coachings/:id/edit", :controller => "coachings", :action => "edit"
  post "/update_coaching/:id", :controller => "coachings", :action => "update"

  # DELETE
  get "/delete_coaching/:id", :controller => "coachings", :action => "destroy"
  #------------------------------

  # Routes for the Action_step resource:
  # CREATE
  get "/action_steps/new", :controller => "action_steps", :action => "new"
  post "/create_action_step", :controller => "action_steps", :action => "create"

  # READ
  get "/action_steps", :controller => "action_steps", :action => "index"
  get "/action_steps/:id", :controller => "action_steps", :action => "show"

  # UPDATE
  get "/action_steps/:id/edit", :controller => "action_steps", :action => "edit"
  post "/update_action_step/:id", :controller => "action_steps", :action => "update"

  # DELETE
  get "/delete_action_step/:id", :controller => "action_steps", :action => "destroy"
  #------------------------------

  # Routes for the Improvement_plan resource:
  # CREATE
  get "/improvement_plans/new", :controller => "improvement_plans", :action => "new"
  post "/create_improvement_plan", :controller => "improvement_plans", :action => "create"

  # READ
  get "/improvement_plans", :controller => "improvement_plans", :action => "index"
  get "/improvement_plans/:id", :controller => "improvement_plans", :action => "show"

  # UPDATE
  get "/improvement_plans/:id/edit", :controller => "improvement_plans", :action => "edit"
  post "/update_improvement_plan/:id", :controller => "improvement_plans", :action => "update"

  # DELETE
  get "/delete_improvement_plan/:id", :controller => "improvement_plans", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
