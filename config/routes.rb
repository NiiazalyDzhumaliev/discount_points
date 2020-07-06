Rails.application.routes.draw do
  root to: 'sessions#welcome'
  resources :users
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'logout', to: 'sessions#destroy', as: 'logout'  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
