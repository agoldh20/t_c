Rails.application.routes.draw do
  get '/' => 'movies#index'
  get '/movies' => 'movies#index'
  get '/movies/new' => 'movies#new'
  post '/movies' => 'movies#create'
  get '/movies/:id' => 'movies#show'
  patch '/movies/edit/:id' => 'movies#edit'
  delete '/movies/:id' => 'movies#destroy'

  get '/order' => 'orders#index'
  post '/order' => 'orders#create'
  get '/order/:id' => 'orders#show'
end
