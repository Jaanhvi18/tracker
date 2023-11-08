Rails.application.routes.draw do
  resources :entertainments
  get 'profiles/show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'dashboards#index'

  resource :profile, only: [:show]
  resources :reviews, :posts


end




