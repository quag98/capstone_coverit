Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # Song Routes
    get "/songs" => "songs#index"
    get "/songs/:id" => "songs#show"
    post "/songs" => "songs#create"
    patch "/songs/:id" => "songs#update"
    delete "/songs/:id" => "songs#destroy"
    # User Routes
    post "/users" => "users#create"
    # Session Routes
    post "/sessions" => "sessions#create"
    # Artist Routes
    get "/artists/:id" => "artists#show"
    post "/artists" => "artists#create"
    patch "/artists/:id" => "artists#update"
    # Favorite Routes
    get "/favorites" => "favorites#index"
    post "/favorites" => "favorites#create"
    delete "/favorites/:id" => "favorites#destroy"
  end
end
