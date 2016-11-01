Rails.application.routes.draw do

  root "welcomes#index", as: "root"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations" }
  devise_scope :user do
    # so link to signout will redirect to destroy session of devise.
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  resources :users do
    resources :lists
    end

   resources :lists
   resources :tours, only:[:create, :update, :destroy, :show]


end
