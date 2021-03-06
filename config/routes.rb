Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create', as: 'signin_post'
  get '/logout' => 'sessions#destroy'
  resources :attractions
  resources :rides, only: [:create]
end
