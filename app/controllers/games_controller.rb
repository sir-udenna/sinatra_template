class GamesController < ApplicationController

    set :views, "app/views/games" 
    set :method_override, true

    get '/games' do 
        @games = Game.all
        erb :index
    end

# --------------------------------------------------------------------------
    get '/new' do 
        @games = Game.all
        erb :new
    end

    post '/games' do
        @game = Game.all
        redirect "/consoles/#{@game.console_id}"
    end
# --------------------------------------------------------------------------

    get '/create_consoles' do 
        erb :create_consoles
    end


    post '/consoles' do
        @console = Console.create(name: params['console_name']) 
        redirect "/consoles/#{@console.id}"
    end
end

