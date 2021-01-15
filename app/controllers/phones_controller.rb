class PhonesController < ApplicationController
  
  get '/phones/new' do
    not_logged_in
    erb :"/phones/new"
  end
  
  post '/phones' do
    # binding.pry
    not_logged_in
    phone = current_user.phones.new(params) 
    if phone.save
      redirect "/users/#{current_user.id}" 
    else
      @errors = phone.errors.full_messages.join(" - ")
      erb :'/phones/new'
    end
  end

  get '/phones' do
    not_logged_in
    @all_phones = Phone.all
    erb :"phones/index"
  end

  get '/phones/:id/edit' do
    not_logged_in
    @phone = Phone.find_by(id: params[:id])
    # binding.pry
    if @phone.user == current_user
      erb :"phones/edit"
    else
      redirect "/phones/#{@phone.id}"
    end
  end

  get '/phones/:id' do
    not_logged_in
    @phone = Phone.find_by(id: params[:id]) 
    # binding.pry
    if @phone && @phone.user_id == current_user.id
      erb :"phones/show"
    else
      redirect "/phones"
    end
  end
  
  patch "/phones/:id/edit" do
    not_logged_in
    @phone = Phone.find_by(id: params[:id])
    if @phone && @phone.user_id == current_user.id
      @phone.update(params[:phone])
    end
    redirect "/phones/#{@phone.id}"
  end

  delete "/phones/:id" do
    not_logged_in
    @phone = Phone.find_by(id: params[:id])
    if @phone && @phone.user_id == current_user.id
      @phone.destroy
    end
    redirect "/phones"
  end
end