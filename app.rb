require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/' do
    pg = PigLatinizer.new(params[:text])
    str = pg.textIntoArray
  end
  
end