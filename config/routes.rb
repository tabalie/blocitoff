Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:show, :update]
  #Set up root (CP 2 082015)
  get 'welcome/index'
  root to: 'welcome#index'
end
