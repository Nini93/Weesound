class TracksController < ApplicationController
skip_before_action :authenticate_user!, only: :index

  def create
    @track = Track.new(track_params)
    @room = Room.find(params[:room_id])
    @track.room = @room
    if @track.save
      redirect_to room_path(@room)
    else
      render "rooms/show"
    end
  end

  private

  def track_params
    params.require(:track).permit(:title, :artist, :youtubeid)
  end

end
