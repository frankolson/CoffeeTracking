Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :accounts, only: [:new, :create]
end
