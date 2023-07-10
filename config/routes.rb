Rails.application.routes.draw do
  root to: "home#home_page"
  resources :users, only: [:create, :show]
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"


  get '/teas', to: 'teas#index'
  get '/teas/:tea_id', to: 'teas#show'

end
