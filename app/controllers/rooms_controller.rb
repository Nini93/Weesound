class RoomsController < ApplicationController
skip_before_action :authenticate_user!, only: :show

  def index
    @rooms = Room.where(user_id: current_user.id)
  end

  def show
    if params[:room_slug]
      user = User.find_by_email('meryl@gmail.com') # WARNING: this works only for Meryl => need to add twitter nickname or facebook nickname into users table
      @room = user.rooms.find_by_slug(params[:room_slug])
    else
      @room = Room.find(params[:id])
    end
    @tracks = @room.tracks.all
    @message = Message.new
    # @messages = @room.messages.last(3)
    @messages = @room.messages
  end

  def new
    @room = Room.new
    @track = Track.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room)
    else
      render :new
    end
  end

  def update
    @room = Room.find(params[:id])
    # @room.current_track = room_params["current_track"].split("v=")[-1].split("&")[0]
    #room_params[:current_track] = room_params[:current_track].split("v=")[-1].split("&")[0]
    current_track = room_params[:current_track].split("v=")[-1].split("&")[0]
    @room.current_track_time = room_params[:current_track_time]
    @room.current_track = current_track
    current_track_title = room_params[:current_track_title].gsub("&", ' ').gsub("'", " ")
    @room.current_track_title = current_track_title
    @room.save
    # @room.update(room_params)
    head :ok
  end

  private

  def room_params
    params.require(:room).permit(:title, :decription, :custom_message, :photo_url, :current_track, :current_track_time, :current_track_title)
  end

end
