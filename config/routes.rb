Rails.application.routes.draw do
  root 'stations#index'
  resources :stations
  resources :workshops, only: [:index, :show]
  namespace :admin do
    resources :workshops, only: [:new, :create]
  end
end
