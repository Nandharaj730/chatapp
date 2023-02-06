class RoomsController < ApplicationController
    def index
      @room = Room.find_by(id: params[:room_id])
      @rooms= Room.all;

      @messages = Message.where(room_id: params[:room_id]);
      @message = Message.new
    end

    def create
        team = Room.create();
        team.room_name = params[:team_name];
        team.concept = 'Group';
        
        if team.save 
          RoomUserMatch.create(room_id: team.id , user_id: session[:user_id]);
          RoomUserMatch.create(room_id: team.id , user_id: params[:user_id]);
          flash[:success] = 'Group created Successfully';
          redirect_to '/rooms/0';
        else
          flash[:error] = team.errors.full_messages;
        end  
    end

    def add
      link = RoomUserMatch.create();
      link.user_id = params[:user_id];
      link.room_id = params[:room_id];

      if link.save
        flash[:success] = 'New Member Joined';
        redirect_to '/rooms/0';
      else
        flash[:error] = link.errors.full_messages;
      end
    end
  end