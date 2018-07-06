require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/' do
    params[:text]
    pg = PigLatinizer.new
  end
  
end