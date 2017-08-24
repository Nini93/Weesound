class RoomsController < ApplicationController
skip_before_action :authenticate_user!, only: :show
  def show
    @room = Room.find(params[:id])
    @tracks = Track.all
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
    room_params[:current_track] = room_params[:current_track].split("v=")[-1].split("&")[0]
    @room = Room.find(params[:id])
    @room.update(room_params)
    head :ok
  end

  private

  def room_params
    params.require(:room).permit(:title, :decription, :custom_message, :photo, :current_track, :current_track_time)
  end

end
