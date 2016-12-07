class StaticPagesController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user! only [:about]

def home

  @events = Event.all

end

def aboutus

end


def set_user
    unless current_user
        @user = User.find(params[:id])
    else
        @user = current_user.find(params[:id])
    end
end




end
