# Rails.application.routes.draw do
#   root to: "home#home_page"
#   resources :users, only: [:create, :show]
#   get "/signup", to: "users#new"
#   # get "/login", to: "sessions#new"
#   post "/sessions", to: "sessions#create"
#   delete "/sessions", to: "sessions#destroy"
#   get "/users/:user_id/subscriptions", to: "subscriptions#index"

#   get '/teas', to: 'teas#index'
#   get '/teas/:tea_id', to: 'teas#show'
#   post '/users/:user_id/subscriptions/add/tea/:tea_id', to: 'subscriptions#create'
# end

Rails.application.routes.draw do
  root to: "home#home_page"

  # get "/payments", to: "payments#create"
  # get "/payments/new", to: "payments#new"
  get "payments/success"
  post "/payments/create/:tea_id", to: "payments#create"
  post "payments/success"
  get "payments/cancel"


  resources :users, only: [:create, :show]
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  get "/users/:user_id/subscriptions", to: "subscriptions#index"


  post '/users/:user_id/subscriptions/add/tea/:tea_id', to: 'subscriptions#create'
end