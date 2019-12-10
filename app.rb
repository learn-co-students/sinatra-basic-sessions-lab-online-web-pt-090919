require_relative 'config/environment'

class App < Sinatra::Base

  configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do
  erb :index
end

post "/checkout" do
    @params = params
    session[:item] = params[:item]
    @session = session
    erb :show
  end
end
