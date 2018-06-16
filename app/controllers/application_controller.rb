class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    @recipes = Recipes.all
    erb :index
  end

  get '/recipes' do
    redirect '/'
  end

  get 'recipes/:id' do
    @recipe = Recipes.find(params[:id])
    erb :show
  end
end
