require_relative 'config/environment'

class App < Sinatra::Base

    configure do 
        enable :sessions
        set :session_secret, "s7y7n7t7a7x7t7i7c"
    end

    get '/' do 
        erb :index 
    end

    post '/checkout' do
        item = params[:item]
        @session = session
        @session[:item] = item
        
        "#{@session[:item]}"
    end

end