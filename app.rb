require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base
    get '/' do
      "Welcome to the Nested Forms Lab!"
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params['pirate'])
      
      params['pirate']['ships'].each do |data|
       Ship.new(data) 
      end 
     @ships = Ship.all
     # binding.pry
      erb :'pirates/show'
    #  binding.pry
  end
end

end
