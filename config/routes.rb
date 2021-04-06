Rails.application.routes.draw do
  resources :listings
  resources :users
  resources :sellers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signup' => 'sellers#new'
  post '/sellers' => 'sellers#create'
end
