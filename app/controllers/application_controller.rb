require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
    set :method_override, true
  end

  get "/" do
    erb :home
  end
  
  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      if @current_user
        @current_user
      else
        @current_user = User.find_by(id: session[:user_id])
      end
    end
  
  end

end
