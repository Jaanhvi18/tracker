# frozen_string_literal: true

Rails.application.routes.draw do
  get 'profiles/show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

   # config/routes.rb
resources :users, only: [:index, :show] # Add other actions as needed


  # devise_scope :user do
  #   get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
  #   get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'dashboards#index'

  resource :profile, only: [:show]
  resources :posts do
    resources :user, only: [:show], as: :user
  end
  resources :users, only: [:show]

  resources :profiles do
    resources :posts, only: %i[new create]
  end

  resources :galleries, only: %i[index show]
  # This creates paths for the gallery index and individual post details

  resources :posts, only: [:new, :create, :destroy]

end
