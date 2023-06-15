Rails.application.routes.draw do
  require "sidekiq/web"

  get 'user/update'
  devise_for :users, controllers: { registrations: "registrations" }
  get '/profile', to: 'pages#profile', as: :profile
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :letters
  resources :friendships, only: :index
  resources :users, only: [ :update, :index, :show ] do
    # /users/:id/request_friendship
    member do
      post :request_friendship
      delete :delete_friendship
      patch :accept_friendship
      patch :reject_friendship
      get :choose_avatar
      patch :upload_avatar
    end
  end

  # authenticate :user, ->(user) { user.admin? } do
  #   mount Sidekiq::Web => '/sidekiq'
  # end

  get "inbox", to: "letters#inbox", as: :inbox
  get "sent", to: "letters#sent", as: :sent
  get "dashboard", to: "pages#dashboard", as: :dashboard
  get "receivingday", to: "pages#receivingday", as: :receiving_day
  get "avatar", to: "pages#avatar", as: :avatar
end
