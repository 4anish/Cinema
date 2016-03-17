  Rails.application.routes.draw do
        root "movies#index"

      resources :movies do
        resources :reviews
      end

      get "movies/popular" => "movies#popular"
    end
