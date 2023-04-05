Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cars, only: [:show]
      resources :reservations, only: [:index, :create]
    end
  end

  resources :users
  post '/auth/login', to: 'authentication#login'
end
