require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
<<<<<<< HEAD
    @user = User.find_by(:username => params[:username])
    # binding.pry
=======
    @user = User.find_by(params[:username])
>>>>>>> 6aba98d60ae5eb5c2cac47074c78e2a39eacad75
    if @user
      session[:user_id] = @user.id
      # session[:username] = @user.username
      redirect to '/account'
    else
      redirect to '/error'
    end
<<<<<<< HEAD
  end

  get '/error' do
    erb :error
=======
>>>>>>> 6aba98d60ae5eb5c2cac47074c78e2a39eacad75
  end

  get '/account' do
    erb :account
  end

  get '/logout' do
    session.clear
    redirect to '/'
  end


end
