Rails.application.routes.draw do
  root  'tweets#index'
  devise_for :users
  resources :users, only: [:edit, :update, :destroy]
end
