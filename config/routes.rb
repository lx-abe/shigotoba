Rails.application.routes.draw do
  root 'stations#index'
  resources :stations
  resources :workshops, only: :index
end
