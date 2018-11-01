Rails.application.routes.draw do
  resources :vehicles
  resources :accessories
  root to: 'vehicles#index'
end
