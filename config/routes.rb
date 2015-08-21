Rails.application.routes.draw do
  
  devise_for :users
  #Set up root (CP 2 082015)
  root to: 'welcome#index'
end
