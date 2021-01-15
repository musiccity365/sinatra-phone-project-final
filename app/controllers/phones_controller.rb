class PhonesController < ApplicationController
  
  get '/phones/new' do
    erb :"phones/new"
  end
  
  post '/phones' do
    # binding.pry
    phone = current_user.phones.new(params) 
    if phone.save
      redirect "/users/#{current_user.id}" 
    else
      @errors = phone.errors.full_messages.join(" - ")
      erb :'/phones/new'
    end
  end

  get '/phones' do
    @phones = current_user.phones
    @all_phones = Phone.all
    erb :"phones/index"
  end

  get '/phones/:id/edit' do
    @phone = Phone.find_by(id: params[:id])
    # binding.pry
    if @phone.user == current_user
      erb :"phones/edit"
    else
      redirect "/phones/#{@phone.id}"
    end
  end

  get '/phones/:id' do
    @phone = Phone.find_by(id: params[:id]) 
    # binding.pry
    if @phone && @phone.user_id == current_user.id
      erb :"phones/show"
    else
      redirect "/phones"
    end
  end
  
  patch "/phones/:id/edit" do
    @phone = Phone.find_by(id: params[:id])
    @phone.update(params[:phone])
    redirect "/phones/#{@phone.id}"
  end

  delete "/phones/:id" do
    @phone = Phone.find_by(id: params[:id])
    @phone.destroy
    redirect "/phones"
  end
end