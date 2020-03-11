Rails.application.routes.draw do
  root 'stations#index'
  resources :stations
  resources :workshops, only: [:index, :show] do
    get :search, on: :collection
  end
  namespace :admin do
    resources :workshops, except: :show
  end
end
