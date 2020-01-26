require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input 
  end 
  
  post '/' do 
    erb :results
     @analyzed_text = TextAnalyzer.new(params[:user_text])
  end 
  
end