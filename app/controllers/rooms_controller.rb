class RoomsController < ApplicationController
skip_before_action :authenticate_user!, only: :show
  def show
    @room = Room.find(params[:id])
    @tracks = Track.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room)
      @room_start = Time.now
    else
      render :new
    end
  end

  def current_track
    @room = Room.find(params[:id])
    @my_time = Time.now - @room_start
    @room.tracks.youtubeid.find()

  end

  private

  def room_params
    params.require(:room).permit(:title, :decription, :custom_message, :photo)

  end

end
