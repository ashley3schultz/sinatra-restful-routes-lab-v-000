class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    erb :index
  end

  get '/recipes' do
    erb :index
  end

  get 'recipes/:id' do 
    @recipe = Recipes.find(params[:id])
    erb :show
end
