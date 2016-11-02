Rails.application.routes.draw do


  root "welcomes#index", as: "root"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
    # so link to signout will redirect to destroy session of devise.
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  resources :users do
    #used so nested list path is callable ex list_path will work only when shallow is used.
    resources :lists, shallow: true
  end

  resources :comments

   resources :tours, only:[:create, :destroy, :index, :delete]
   resources :apartment_lists
   resources :apartments


 get '/lists/:id/delete' => "lists#destroy", as: "list_delete"
 get '/comments/:id/delete' => "comments#destroy", as:"comment_delete"
 get '/apartment_lists/:id/delete' => "apartment_lists#destroy", as:"apartment_lists_delete"
 get '/tours/:id' => "tours#destroy", as: "delete_tour"

end
