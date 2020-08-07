class UserController < ApplicationController

  get '/users/signup' do
    erb :'/users/signup'
  end

  #where a user object is created
  post '/signup' do
    @user =User.create(username: params[:username], password: params[:password])
    #to redirect the user to the show page after signup
    #redirect "/users/#{@user.id}"
    erb :index
  end

  #dynamic route to create a user id for the show page to render data
  get '/signup/id' do
    @user= User.find(params[:id])
    erb :show
  end
end
