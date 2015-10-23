Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:update, :show, :index] do
      resources :items, only: [:create, :destroy]
  end

  get 'welcome/index'

  root to: 'welcome#index'
end
