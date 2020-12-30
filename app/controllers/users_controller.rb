class UsersController < ApplicationController

    get '/signup' do
        erb :'users/new'
    end

    post '/signup' do
        #user = User.create(username: params[:username], password: , first_name: params[:first_name], last_name: params[:last_name], department: params[:department], position: params[:position])
        user = User.create(params)
        binding.pry
        session[:user_id] = user.id
    end
  
    get '/login' do
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to '/profile'
        else
            redirect to '/login'
        end
    end
    #logout link
     
end