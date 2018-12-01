Rails.application.routes.draw do
  root  'tweets#index'
  devise_for :users
  resources :tweets, only: [:create, :destroy, :show] do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:edit, :update, :destroy, :show]
  resources :images
end
