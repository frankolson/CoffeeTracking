Rails.application.routes.draw do
  resources :accounts, only: [:new, :create]
end
