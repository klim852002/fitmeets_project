class UsersController < ApplicationController

  def show
    if !current_user || !User.exists?(params[:id])
      redirect_to new_user_registration_path
    else
      @user = User.find(params[:id])
    end

  end

  def home
  end

  def create
  end

end
