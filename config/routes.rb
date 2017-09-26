Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get "static_pages/about"

  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root to: 'visitors#new'
end
