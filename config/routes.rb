Rails.application.routes.draw do
  root  'tweets#index'
  devise_for :users
  resources :tweets, only: [:index, :create]
  resources :users, only: [:edit, :update, :destroy, :show]
  resources :images
end
