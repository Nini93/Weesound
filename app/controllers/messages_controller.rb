class MessagesController < ApplicationController

  def create
    @message = Message.new(params_message)
    @room = Room.find(params[:room_id])
    @message.room = @room
    if @message.save
      # redirect_to room_path(@room)
      ActionCable.server.broadcast("room_#{@room.id}", {
        message_partial: render(partial: "message", locals: { message: @message }),
        current_user_id: current_user.id
      })
      head :ok
    else
      render "rooms/show"
    end
  end

  private

  def params_message
    params.require(:message).permit(:content)
  end

end
