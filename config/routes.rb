Rails.application.routes.draw do
  root 'top#top'

  resources :users, only: %i[new create index show destroy]
end
