Rails.application.routes.draw do
  devise_for :users
  root "clients#index"
  resources :clients, only: [:new, :create]
  namespace :manufacturer do
    resources :campaigns, only: [:new, :create, :show]    
  end
end
