Rails.application.routes.draw do
  get 'junk/play'
  get 'admin/dashboard'
  resources :notes
  resources :categories
  resources :blogs
  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
