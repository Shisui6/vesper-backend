Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cars, only: [:index, :show, :create, :destroy]
      resources :reservations, only: [:index, :create]
    end
  end

  resources :users, only: [:create]
  post '/auth/login', to: 'authentication#login'
end
