Rails.application.routes.draw do
  root 'astrounauts#index'
  resources :astronauts, only: [:index]
end
