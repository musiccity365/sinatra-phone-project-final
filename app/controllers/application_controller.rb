require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "top_session"
  end

  get '/' do
    erb :welcome
  end

  helpers do
    def logged_in? 
      !!session[:user_id]
    end

    def current_user 
      # if @current_user
      #   @current_user
      # else
      #   @current_user = User.find_by(id: session[:user_id])
      # end
      @current_user ||= User.find_by(id: session[:user_id]) 
    end 
  end 
end