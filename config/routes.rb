Rails.application.routes.draw do
  resources :users
  resources :employments
  root to: 'dashboard#index'
end
