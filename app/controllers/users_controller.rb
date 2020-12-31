class UsersController < ApplicationController

    get '/signup' do
        erb :'users/new'
    end

    post '/signup' do
        user = User.new(params)

        if user.save
            session[:user_id] = user.id
            redirect to "/jobs"
        else
            @errors = user.errors.full_messages.join("")
            erb :'users/new'
        end
    end
  
    get '/login' do
        erb :'/users/login'
    end

    post '/login' do
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to '/jobs'
        else
            redirect to '/users/login'
        end
    end

    get 'user/:id' do

    end

    #logout link
     
end