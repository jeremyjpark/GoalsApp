class GoalsController < ApplicationController
  def index
    user = current_user
    if user.nil?
      user_id = 0
    else
      user_id = user.id
    end

    @goals = Goal.all.where(["public = ? OR user_id = ?", true, user_id])
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
    if @goal.save
      redirect_to goals_url
    else
      flash.now[:error] = @goal.errors.full_messages
      render :new
    end
  end

  def edit
    @goal = Goal.find(params[:id])
    render :edit
  end

  def update
    @goal = Goal.find(params[:id])

    if @goal.update(goal_params)
      redirect_to goals_url
    else
      flash.now[:error] = @goal.errors.full_messages
      render :edit
    end

  end

  def destroy
    goal = Goal.find(params[:id])
    goal.destroy
    redirect_to goals_url
  end

  private

  def goal_params
    a = params.require(:goal).permit(:title, :body, :public, :completed)
    a[:public] = a[:public] == "on"
    a[:completed] = a[:completed] == "on"
    a
  end
end
