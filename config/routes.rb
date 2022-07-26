Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "main#index"

  get "/", to: "main#index"

  # get "/playlist", to: "playlist#index"
  resources :playlists do
    resources :musics
  end

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "logout", to: "sessions#destroy"
end
