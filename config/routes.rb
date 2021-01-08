Rails.application.routes.draw do
  devise_for :users
  root 'top#top'

  get 'signup', to: 'users#new'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  resources :users, only: %i[new create index show destroy]
  resources :items, only: %i[new create index show destroy]
end
