Rails.application.routes.draw do
  # resources :users do
  #   resources :leaves, only: [:index, :show, :create, :update, :destroy]
  # end
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :leaves, only: [:index, :show, :new, :create, :update, :destroy], as: 'leave'
  
  get '/myleaves', to: "leaves#my_leaves"
  # get "/users", to: "users#index"
  resources :holidays, only: [:index, :edit, :show, :create, :update, :destroy]
  get 'public_holidays', to: "holidays#get_next_year_holidays"


  get 'home/index'
  root "home#index"
end

# Defineroutes per the DSL in https://guides.rubyonrails.org/routing.html