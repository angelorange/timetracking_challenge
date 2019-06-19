Rails.application.routes.draw do
  root to: 'home#index'
  resources :geofencings
  resources :time_trackings

  get '/about', to: 'home#about'
end
