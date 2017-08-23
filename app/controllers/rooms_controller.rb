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
    else
      render :new
    end
  end

  def current_track
    @room = Room.find(params[:id])
    @tracks_duration_sum = [@room.created_at.to_i]
    @duration_array = @room.tracks.map{ |track| track.duration }

    @duration_sum = @room.created_at.to_i

    @duration_array.each do |duration|
      @duration_sum += duration
      @tracks_duration_sum << @duration_sum
    end

    @current_track_time = Time.now.to_i

    index = 0
    for index in 0...@tracks_duration_sum.size
      if @current_track_time > @tracks_duration_sum[index] || @current_track_time <= @tracks_duration_sum[index + 1]
        @good_track = @room.tracks.find { |track| track.id == @room.tracks[index + 1].id }
        @current_track = @good_track.id
      elsif @current_time > @tracks_duration_sum[@tracks_duration_sum.size-1]
        @current_track = nil
      end
      index += 1
    end
  end


  private

  def room_params
    params.require(:room).permit(:title, :decription, :custom_message, :photo)
  end

end
