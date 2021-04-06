Rails.application.routes.draw do
  resources :listings
  resources :users
  resources :sellers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/users',         to: 'users#create'
  get '/users/:user_id', to: 'users#show'
  get '/users',          to: 'users#index'

  post '/sellers',         to: 'sellers#create'
  get '/sellers/:seller_id', to: 'sellers#show'
  get '/sellers',          to: 'sellers#index'

  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :users, only: [:create, :show, :index] do 
    resources :items, only: [:create, :show, :index, :destroy]
  end

end
