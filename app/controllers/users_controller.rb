class UsersController < ApplicationController

  get '/signup' do
    erb :'/users/new'
  end

  post '/signup' do
    user = User.new(params[:user])
    if user.save
      session[:user_id] = user.id 
      redirect "/users/#{user.id}"
    else      
      @errors = user.errors.full_messages.join(" - ")
      erb :"users/new" 
    end
  end

  get '/login' do
    erb :"users/login"
  end

  post '/login' do
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect "/users"
    else
      redirect "/login"
    end
  end

  get '/logout' do
    session.clear
    redirect '/login'
  end

  get '/users' do 
    redirect "/users/#{current_user.id}"
  end


  get '/users/:id/edit' do
    not_logged_in
    @user = User.find(params[:id])
    if @user.id == current_user.id
      erb :'/users/edit'
    else
      redirect "/users/#{current_user.id}"
    end
  end

# Show - get details on an individual user
  get '/users/:id' do
    not_logged_in
    @user = User.find_by(id: params[:id])
    if @user.id == current_user.id
      erb :'/users/show'
    else
      redirect "/users/#{current_user.id}"
    end
  end

  patch '/users/:id/edit' do
    not_logged_in
    @user = User.find(params[:id])
    if @user.id == current_user.id
      @user.update(params[:user])
      redirect "/users/#{@user.id}"
    else
      redirect "/users/#{current_user.id}"
    end
  end
end