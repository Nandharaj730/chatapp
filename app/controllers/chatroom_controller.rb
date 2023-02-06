class ChatroomController < ApplicationController
    skip_forgery_protection


    # def new
    #     @chat
    #     @message = Message.new ;
    #     if params[:chatid]
    #         if params[:chatid].to_i > 0
    #             @chat = User.find(params[:chatid]);
    #             @flag=  1;
    #         else
    #             @chat = Group.find((params[:chatid].to_i).abs);
    #             flag = 0;
    #         end
    #     end
    # end 

    # def create
    #     @message = Message.new ;
        
    #     text = params.require('message');
    #     # to = params.require('to');
    #     # sign = params.require('isgroup');
        
    #     message = Message.create();
    #     message.from = session[:user_id];
    #     # message.to = to ;
    #     message.message = text;

    #     if sign == 0
    #         message.isgroup = 1;
    #     else 
    #         message.isgroup = 0;
    #     end

    #     if message.save
    #         ActionCable.server.broadcast "chatroom_channel",
    #                                         foo: message.message
    #     else
    #         flash[:error] = 'Unable to send message ...'
    #     end    
    # end

end
