Rails.application.routes.draw do

  # devise_for :users

  namespace :api do
    namespace :v1 do

      # resources :sessions, only: [:create, :destroy]
      post '/login', to: '/api/v1/sessions#login', as: 'user_login'
      get '/logout', to: '/api/v1/sessions#logout', as: 'user_logout'

      # resources :users, only: [:create, :update, :destroy]
      # resources :registrations, only: [:create]
      post '/register', to: '/api/v1/users#register_user', as: 'user_registration'
      put '/user', to: '/api/v1/users#update_user', as: 'update_user'
      get '/user/delete', to: '/api/v1/users#destroy_user', as: 'delete_user'

      resources :budgets, only: [:create, :update, :destroy]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
