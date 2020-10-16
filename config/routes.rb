Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  resources :books
  resources :rentals, only: [:create, :destroy]
end
