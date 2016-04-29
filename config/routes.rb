Rails.application.routes.draw do

  resources :payments
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :users

  get 'account', controller: :users, as: :account
  get 'login' => "user_sessions#new", as: :login
  get 'logout' => "user_sessions#destroy", as: :logout

  root 'main#index'

end
