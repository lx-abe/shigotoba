Rails.application.routes.draw do
  root 'workshops#index'

  get '/sign_in', to: 'users#new'
  post '/sign_in', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/favorites', to: 'favorites#index'

  resources :workshops, only: [:index, :show] do
    resource :favorites, only: [:create, :destroy]
  end

  namespace :admin do
    resources :workshops, except: :show
    resources :stations
  end
end
