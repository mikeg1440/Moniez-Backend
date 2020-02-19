Rails.application.routes.draw do

  # devise_for :users

  namespace :api do
    namespace :v1 do

      # resources :sessions, only: [:create, :destroy]
      post '/login', to: '/api/v1/sessions#login', as: 'user_login'
      delete '/logout', to: '/api/v1/sessions#logout', as: 'user_logout'
      get '/is-authed', to: '/api/v1/sessions#is_authed', as: 'is_logged_in'

      # resources :users, only: [:create, :update, :destroy]
      # resources :registrations, only: [:create]
      post '/register', to: '/api/v1/users#register_user', as: 'user_registration'
      put '/user', to: '/api/v1/users#update_user', as: 'update_user'
      get '/user/delete', to: '/api/v1/users#destroy_user', as: 'delete_user'

      resources :budgets, only: [:index, :show, :create, :update, :destroy]
      resources :earnings, only: [:index, :create, :update, :destroy]
      resources :bills, only: [:index, :create, :update, :destroy]
      resources :expenses, only: [:index, :create, :update, :destroy]
      resources :categories, only: [:index]

      namespace :categories do
        resources :bill_categories, only: [:index, :create, :destroy]
        resources :earning_categories, only: [:index, :create, :destroy]
        resources :expense_categories, only: [:index, :create, :destroy]

      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
