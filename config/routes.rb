Rails.application.routes.draw do

  authenticated :user do
    root 'home#index', as: :authenticated_root
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users

  # post '/search' => 'home#index'
end
