Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "/leaves", to: "leaves#index"
  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
