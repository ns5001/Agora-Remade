Rails.application.routes.draw do


  root "welcomes#index", as: "root"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
    # so link to signout will redirect to destroy session of devise.
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  resources :users do
    resources :lists
    end

   resources :tours, only:[:create, :update, :destroy, :show]
   resources :apartments
   
end
