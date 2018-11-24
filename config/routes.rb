Rails.application.routes.draw do
  root  'tweets#index'
  devise_for :users
  resources :tweets, only: [:index, :create, :destroy, :show]
  resources :users, only: [:edit, :update, :destroy, :show]
  resources :images
end
