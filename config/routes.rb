Rails.application.routes.draw do
  root 'workshops#index'

  get '/sign_in', to: 'users#new'
  post '/sign_in', to: 'users#create'
  
  resources :workshops, only: [:index, :show]
  namespace :admin do
    resources :workshops, except: :show
    resources :stations
  end
end
