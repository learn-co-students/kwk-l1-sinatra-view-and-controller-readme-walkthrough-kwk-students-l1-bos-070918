require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'views'
  end

get '/' do 
  erb :home
end 

get '/quiz' do 
  erb :quiz 
end 

get '/resources' do 
  erb :resources 
end 

get '/about' do 
  erb :about 
end 
  
  post  '/results' do
   answers = params.values
   @total = 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total
   
   if @total < 12
     erb :newbie 
   elsif @total < 16 
     erb :moderate
   elsif @total <19
     erb :master
   end
 end
  end 