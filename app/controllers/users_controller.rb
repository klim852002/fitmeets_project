class UsersController < ApplicationController

  def show
    if !current_user || !User.exists?(params[:id])
      redirect_to new_user_registration_path
    else
      @user = User.find(params[:id])
    end

  end

  def show_user_events
  if !current_user || !User.exists?(params[:id])
    redirect_to root_path
  else
    # @recipes = Recipe.where("user_id = ?", current_user.id)
    @user = User.find(params[:id])
    @events = Event.where(creator_id: @user)
  end
  end


  def home
  end

  def create
  end

end
