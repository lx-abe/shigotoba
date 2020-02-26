Rails.application.routes.draw do
  root 'stations#index'
  resources :stations do 
    resources :workshops
  end
end
