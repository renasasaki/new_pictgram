Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'pages/help'
  root 'pages#index'

  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy' 
end
