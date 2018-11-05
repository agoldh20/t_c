Rails.application.routes.draw do
  get '/' => 'theaters#index'

  get '/theaters' => 'theaters#index'
  get '/theaters/new' => 'theaters#new'
  post '/theaters' => 'theaters#create'
  get '/theaters/:id' => 'theaters#show'
  get '/theaters/:id/edit' => 'theaters#edit'
  patch '/theaters/:id' => 'theaters#update'
  delete '/theaters/:id' => 'theaters#destroy'

  get '/movies' => 'movies#index'
  get '/movies/new' => 'movies#new'
  post '/movies' => 'movies#create'
  get '/movies/:id' => 'movies#show'
  get '/movies/:id/edit' => 'movies#edit'
  patch '/movies/:id' => 'movies#edit'
  delete '/movies/:id' => 'movies#destroy'

  get '/showtimes' => 'showtimes#index' 
  get '/showtimes/:id/edit' => 'showtimes#edit'
  patch '/showtimes/:id' => 'showtimes#update'
  get '/showtimes' => 'showtimes#destroy'

  get '/orders' => 'orders#index'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'
end
