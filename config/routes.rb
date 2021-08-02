Rails.application.routes.draw do

# Login / Logout
  
  root to: "sessions#welcome"

  resources :users, only: [:new, :create]

  get "/login", to: "sessions#login"

  post '/login', to: 'sessions#new'

  get 'welcome', to: 'sessions#welcome'

  get '/authorized/', to: 'sessions#page_requires_login'

  get '/sessions/logout', to: 'sessions#logout'

  delete '/sessions/logout', to: 'sessions#logout'


# Message posting and the Like

  get "/messages", to: "messages#index"

  post "/messages", to: "messages#create"

  delete "/messages/:id", to: "messages#destroy"

  get "/messages/:id", to: "messages#show"

  get "/comments", to: "comments#show"

  post "/comments", to: "comments#create"

  delete "/comments/:id", to: "comments#destroy"

# User Page

  get "/users/:id", to: "users#show"

  post "/users/:id", to: "users#update"

end
