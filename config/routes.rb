Rails.application.routes.draw do
  root 'welcome#index'
  resources :accounts, only: [:new, :create]
end
