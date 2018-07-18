require_relative 'config/environment'

class App < Sinatra::Base
 
 get '/' do 
   "This is a homepage"
 end 
 
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse 
    # ^ instance variable 
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    # Write your code here!
    erb :friends
  end
  
end
