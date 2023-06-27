Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :items, only: [:index]
end
