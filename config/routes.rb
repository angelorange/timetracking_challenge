Rails.application.routes.draw do
  resources :geofencings, only: [:new, :create, :show, :index]
end
