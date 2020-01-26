require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input 
  end 
  
  post '/' do 
    erb :results
     @analyzed_text = Piglatinizer.new(params[:pig_text])
  end 
  
end