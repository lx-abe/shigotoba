Rails.application.routes.draw do
  root 'workshops#index'

  get '/sign_in', to: 'users#new'
  post '/sign_in', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  
  resources :workshops, only: [:index, :show]
  resources :favorites, only: [:create, :destroy]
  namespace :admin do
    resources :workshops, except: :show
    resources :stations
  end
end
