class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy, :update, :join]

  def index
    # @events = Event.all
    @events = Event.where(["sports_cat LIKE ? or event_name LIKE ? or event_address LIKE ? or details LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%"])
  end

  def show
    @event = Event.find(params[:id])
    # @event.event_date = @events.event_date.strftime("%d/%m/%Y")
    @eventusers = Event.find(params[:id]).users
    @comments = Comment.where(event_id: @event).order('created_at DESC')
    @hash = Gmaps4rails.build_markers(@event) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
      marker.infowindow event.event_name
    end
  end

  def new
    @event = Event.new
  end

  def create

    current_user
    # @event = Event.new(event_param)
    @event = current_user.events.new(event_params)
    @event.creator_id = current_user.id

    respond_to do |format|
      if @event.save

        CreateMailer.event_created(current_user).deliver
        format.html { redirect_to @event, notice: 'You have added a new event.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event =Event.find(params[:id])
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Your event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_path, notice: 'You have successfully deleted your event' }
      format.json { head :no_content }
    end
  end

  def join
    current_user
    @user = current_user
    @event = Event.find(params[:id])
    # if @user.events.includes(:events).where('id') != @event
    # if Post.includes(:author).where(..)
    # User.joins(:events).where("@user.events ")
    # user3.events.where(id: '4')
    if @user.events.where(id: @event).exists? || @event.users.size >= @event.players_req
      # debugger
      flash[:notice] = 'Oops, you have already joined this event.'
      redirect_to event_path
    else
      @user.events << @event
      JoinMailer.join_event(current_user, @event).deliver
      flash[:notice] = 'You have joined the event.'
      redirect_to event_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:event_date, :start_time, :end_time, :event_address, :postal_code, :players_req, :sports_cat, :event_name, :details, :picture, :creator_id)
    end
end
