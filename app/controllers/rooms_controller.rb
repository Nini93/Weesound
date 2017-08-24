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

  def current_track
    @room = Room.find(params[:id])
    @elapsed_time = Time.now.utc.to_i - @room.created_at.to_i
    @my_track = ""
    @room.tracks.each do |t|
      if @elapsed_time - t.duration > 0
        @elapsed_time -= t.duration
        puts "#{elapsed_time}, #{t.duration}"
        p "#{@room.tracks}"
      elsif @elapsed_time - t.duration <= 0
        @my_track = t.youtubeid
        break
        p "#{@room.tracks}"
      end
    end
  end



  private

  def room_params
    params.require(:room).permit(:title, :decription, :custom_message, :photo)
  end

end

index = 0
for index in 0...room.tracks.size
  if elapsed_time - room.tracks[index].duration > 0
    elapsed_time -= room.tracks[index].duration
  elsif elapsed_time - room.tracks[index].duration <= 0
    my_track = room.tracks[index].youtubeid
    break
  end
end
