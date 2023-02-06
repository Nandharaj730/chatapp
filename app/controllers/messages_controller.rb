class MessagesController < ApplicationController
    def index
      
    end

    def create
      @message = Message.new(message_params);
      
      @message.user_id = session['user_id'];
      @message.from = @message.user.username;
      if @message.save
        ChatroomChannel.broadcast_to @message.room, @message;
      end
    end

    private
    def message_params
      params.require(:message).permit(:context, :room_id)
    end
  end