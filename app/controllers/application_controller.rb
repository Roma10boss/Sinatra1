require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'secret'
  end

  get "/" do
    erb :welcome
  end

  get '/signup' do
    if logged_in?
      session.clear
      erb :signup
    else
      erb :signup
    end
  end


  get '/login' do
   if logged_in?
     flash[:message] = "You are already logged in."
     redirect '/'
   else
     erb :login
   end
 end


 helpers do
   def logged_in?
     !!session[:user_id]
   end
end
end
