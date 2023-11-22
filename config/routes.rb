Rails.application.routes.draw do
  devise_for :users

  resources :contracts, only: [:index, :new, :create, :edit, :destroy] do
    resources :hitmen, only: [:index]
  end

  resources :hitmen, only: [:show, :edit]

  root to: "pages#home"
  get "/my_contracts", to: "contracts#my_contracts"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
