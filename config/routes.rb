Rails.application.routes.draw do

  authenticated :user do
    root 'locations#search', as: :authenticated_root
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users

  get '/results' => 'locations#results'
  post '/search' => 'locations#search_results'
end
