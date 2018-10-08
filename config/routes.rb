Rails.application.routes.draw do
  root  'tweets#index'
  devise_for :users
  resources :tweets, only: [:create]
  resources :users, only: [:edit, :update, :destroy]
end
