Rails.application.routes.draw do


  root "welcomes#index", as: "root"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
    # so link to signout will redirect to destroy session of devise.
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  get '/lists/:id/delete' => "lists#destroy", as: "list_delete"
  get '/comments/:id/delete' => "comments#destroy", as: "comment_delete"
  get '/apartment_lists/:id/delete' => "apartment_lists#destroy", as: "apartment_list_delete"

  resources :users do
    #Shallow prevents deep nesting. This way if we call a list path, Rails knows that we are calling users list path
    resources :lists, shallow: true
    end

   resources :comments

   resources :tours, only:[:create, :update, :destroy, :show]
   resources :apartments


end
