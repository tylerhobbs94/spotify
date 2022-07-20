Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "main#index"

  get "/", to: "main#index"

  get "/playlist", to: "playlist#index"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  delete "logout", to: "sessions#destory"
end
