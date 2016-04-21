Rails.application.routes.draw do

  resources :payments
  resources :user_sessions
  resources :users

  root 'main#index'

end
