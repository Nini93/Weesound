class RoomsController < ApplicationController
skip_before_action :authentificate!, only: :show
  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room)
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:title, :decription, :custom_message, :photo)

  end

end
