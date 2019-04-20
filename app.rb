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
     # binding.pry
      erb :'pirates/show'
    #  binding.pry
  end
end

end
