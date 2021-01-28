Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :sessions, only: [ :create, :destroy ]
      resources :pokemons, only: [ :index, :show, :update, :create, :destroy ]
    end
  end
end
