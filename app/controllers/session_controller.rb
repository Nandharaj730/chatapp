class SessionController < ApplicationController
    skip_forgery_protection

    def index
    end

    def new 
        param = params.require('login').permit('email' , 'password')
        user1 = User.find_by(email: param[:email]);
       
        if user1 && user1.authenticate(param[:password])
            flash[:success] = "Logged in successfully #{user1.username}";
            session[:user_id] = user1.id; 
            session[:user_name] = user1.username;
            redirect_to '/rooms/0'
        else 
            flash[:error] = "Enter a valid email and password";
            redirect_to root_path
        end
    end

    def create
        param = params.require('user').permit('username' , 'email' , 'password')
        user = User.create(username: param[:username] , email: param[:email] , password: param[:password] );

        if user.save
            flash[:success] = "Account created successfully";
            redirect_to root_path
        else
            flash[:notice] = user.errors.full_messages;
            redirect_to root_path
        end
    end

    def destroy 
        session[:user_id] = ""
        flash[:success] =  'Logged out succesfully';
        redirect_to root_path
    end
end
