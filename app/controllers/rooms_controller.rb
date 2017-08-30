class RoomsController < ApplicationController
skip_before_action :authenticate_user!, only: :show

  def index
    @rooms = Room.where(user_id: current_user.id)
  end

  def show
    @room = Room.find(params[:id])
    @tracks = @room.tracks.all
    @message = Message.new
    @messages = @room.messages.last(3)
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
    @room.current_track_title = room_params[:current_track_title]
    @room.save
    # @room.update(room_params)
    head :ok
  end

  private

  def room_params
    params.require(:room).permit(:title, :decription, :custom_message, :photo_url, :current_track, :current_track_time, :current_track_title)
  end

end
