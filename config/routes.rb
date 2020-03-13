Rails.application.routes.draw do
  root 'workshops#index'
  resources :workshops, only: [:index, :show]
  namespace :admin do
    resources :workshops, except: :show
    resources :stations
  end
end
