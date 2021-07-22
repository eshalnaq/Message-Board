Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "messages#index"
get "/messages", to: "messages#index"
post "/messages", to: "messages#create"
delete "/messages/:id", to: "messages#destroy"
get "/messages/:id", to: "messages#show"
get "/comments", to: "comments#show"
post "/comments", to: "comments#create"
delete "/comments/:id", to: "comments#destroy"
end
