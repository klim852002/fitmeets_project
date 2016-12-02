class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(post_param)
  end

  def update
  end

  def show
    @event = Event.find(params[:id])
    @comments = Comment.where(event_id: @event).order('created_at DESC')
  end

end
