Rails.application.routes.draw do
  resources :schedules
  resources :comments
  resources :photo_restaurants
  resources :stars
  resources :restaurants
  mount_devise_token_auth_for 'User', at: 'auth'
  
  devise_for :administrators

  get '/users', to: 'users#index', as: 'users'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
