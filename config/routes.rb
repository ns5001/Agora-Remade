Rails.application.routes.draw do
  devise_for :users
  resources :apartments
  root "welcomes#index"

  resources :users do
    resources :lists
  end
  
end
