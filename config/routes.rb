Rails.application.routes.draw do
  get "/users", to: "users#index"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"


  get "/houses", to: "houses#index"
  get "/houses/:id", to: "houses#show"


  post "/reviews", to: "reviews#create"
  delete "/reviews/:id", to: "reviews#destroy"
  patch "/reviews/:id", to: "reviews#update"
get "/reviews", to:"reviews#index"
get "/reviews/:id", to:"reviews#show"
end
