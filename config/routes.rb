Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#home'
  resources :sessions
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  get 'signup', to: 'users#new'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
end
