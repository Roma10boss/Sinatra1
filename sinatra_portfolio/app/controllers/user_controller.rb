class UserController < ApplicationController
  
  get '/users/signup' do 
    erb :'/users/signup'
  end 

  #where a user object is created
  post '/users/signup' do 
    @user =User.create(username: params[:username], password: params[:password])
    #to redrect the user to the show page after signup
    redirect "/users/#{(@user.id)}"
  end 

  #dynamic route to create a user id for the show page to render data
  get '/users/:id' do 
    @user= User.find(params[:id])
    erb :'/users/show'
  end 

  
end 