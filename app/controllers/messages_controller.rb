class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(3)
  end


  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    @message.save
  end

end
