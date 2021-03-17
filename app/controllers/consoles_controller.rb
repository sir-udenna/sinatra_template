class ConsolesController < ApplicationController

    set :method_override, true
    set :views, "app/views/consoles" 


    get '/consoles' do 
        @consoles = Console.all
        erb :index
    end
# --------------------------------------------------------------------------


    get '/consoles/:id' do
        @console = Console.find(params[:id])
        erb :show
    end
# --------------------------------------------------------------------------

    get '/create_consoles' do 
        erb :create_consoles
    end


    post '/consoles' do
        @console = Console.create(name: params['console_name']) 
        redirect "/consoles/#{@console.id}"
    end
# --------------------------------------------------------------------------

    get '/consoles/:id/edit' do 
        @console = Console.find(params[:id])
        erb :edit
    end

    patch '/consoles/:id' do 
        @console = Console.find(params[:id])
        @console.update(name: params['console_name'])
        erb :show 
    end
# --------------------------------------------------------------------------

    delete '/consoles/:id' do 
        @console = Console.find(params[:id])
        @console.destroy
        redirect "/consoles"
    end


end