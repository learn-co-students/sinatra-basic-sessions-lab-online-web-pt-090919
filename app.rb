require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "dimir"
  end
  
  get "/" do
    erb :index
  end
  
  post "/checkout" do
    params.each { |k,v|
      session[k.to_s] = v
    }
  end
  
end