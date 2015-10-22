Rails.application.routes.draw do

  get 'items/index'

  get 'items/show'

  get 'items/new'

  get 'items/edit'

  devise_for :users
  	resources :users, only: [:show, :update]

  resources :items, only: [:create]

  get 'welcome/index'

  root to: 'welcome#index'
end
