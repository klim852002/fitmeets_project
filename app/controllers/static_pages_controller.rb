class StaticPagesController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]


def home

  @events = Event.limit(4)

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
