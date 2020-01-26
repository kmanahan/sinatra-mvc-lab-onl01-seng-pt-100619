require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input 
  end 
  
  post '/' do 
    erb :results
     @analyzed_text = Pigatinizer.new(params[:pig_text])
  end 
  
end