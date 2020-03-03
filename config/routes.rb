Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :backgrounds, only: [:index]
      resources :forecast, only: [:index]
      resources :users, only: [:create]
      resources :sessions, only: [:create]
      resources :road_trip, only: [:create]
    end
  end
end
