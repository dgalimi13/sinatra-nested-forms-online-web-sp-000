require './environment'


module FormsLab
  class App < Sinatra::Base

    get '/' do
    erb :'pirates/new'
    end
    
    get '/new' do 
      erb :
    end
    
    post '/pirates' do
    @pirate = Pirate.new(params[:pirate])
 
    params[:pirate][:ships].each do |details|
    Ship.new(details)
    end
 
    @ships = Ship.all
 
    erb :pirate
    end

  end
end
