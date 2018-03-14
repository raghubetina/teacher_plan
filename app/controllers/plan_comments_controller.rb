class PlanCommentsController < ApplicationController
  before_action :current_user_must_be_plan_comment_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_plan_comment_user
    plan_comment = PlanComment.find(params[:id])

    unless current_user == plan_comment.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = current_user.plan_comments.ransack(params[:q])
      @plan_comments = @q.result(:distinct => true).includes(:user, :improvement_plan).page(params[:page]).per(10)

    render("plan_comments/index.html.erb")
  end

  def show
    @plan_comment = PlanComment.find(params[:id])

    render("plan_comments/show.html.erb")
  end

  def new
    @plan_comment = PlanComment.new

    render("plan_comments/new.html.erb")
  end

  def create
    @plan_comment = PlanComment.new

    @plan_comment.user_id = params[:user_id]
    @plan_comment.body = params[:body]
    @plan_comment.improvement_plan_id = params[:improvement_plan_id]

    save_status = @plan_comment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/plan_comments/new", "/create_plan_comment"
        redirect_to("/plan_comments")
      else
        redirect_back(:fallback_location => "/", :notice => "Plan comment created successfully.")
      end
    else
      render("plan_comments/new.html.erb")
    end
  end

  def edit
    @plan_comment = PlanComment.find(params[:id])

    render("plan_comments/edit.html.erb")
  end

  def update
    @plan_comment = PlanComment.find(params[:id])
    @plan_comment.body = params[:body]
    @plan_comment.improvement_plan_id = params[:improvement_plan_id]

    save_status = @plan_comment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/plan_comments/#{@plan_comment.id}/edit", "/update_plan_comment"
        redirect_to("/plan_comments/#{@plan_comment.id}", :notice => "Plan comment updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Plan comment updated successfully.")
      end
    else
      render("plan_comments/edit.html.erb")
    end
  end

  def destroy
    @plan_comment = PlanComment.find(params[:id])

    @plan_comment.destroy

    if URI(request.referer).path == "/plan_comments/#{@plan_comment.id}"
      redirect_to("/", :notice => "Plan comment deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Plan comment deleted.")
    end
  end
end
