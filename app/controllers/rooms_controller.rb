class RoomsController < ApplicationController
skip_before_action :authenticate_user!, only: :show
  def show
    @room = Room.find(params[:id])
    @tracks = Track.all
    @message = Message.new
    @messages = @room.messages.last(5)
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

  private

  def room_params
    params.require(:room).permit(:title, :decription, :custom_message, :photo)

  end

end
