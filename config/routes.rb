Rails.application.routes.draw do
  root "clients#index"
  resources :clients, only: [:new, :create]
end
