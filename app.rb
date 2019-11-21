require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions
    set :session_secret, '1a2b3c'
  end 

  get '/' do 
    erb :index
  end 

  post '/checkout' do 
    @item = params[:item] 
    session[:item] = @item
    erb :index
  end 
end