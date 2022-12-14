Rails.application.routes.draw do
  resources :roles
  resources :leave_types
  resource :users, only: [:index, :create, :update, :destroy]
  resources :leaves, only: [:create, :index, :update, :destroy]

  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  
  #post "/users", to: "users#create"
  # get "/leaves", to: "leaves#index"
  # get "/users", to: "users#index"

  get 'home/index'


  root "home#index"
end

# Defineroutes per the DSL in https://guides.rubyonrails.org/routing.html