Rails.application.routes.draw do

  resources :payments
  resources :user_sessions
  resources :users
  get 'account', controller: :users, as: :account

  root 'main#index'

end
