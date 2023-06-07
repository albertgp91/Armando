Rails.application.routes.draw do
  get 'user/update'
  devise_for :users, controllers: { registrations: "registrations" }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :letters
  resources :users, only: :update
  get "inbox", to: "letters#inbox", as: :inbox
  get "sent", to: "letters#sent", as: :sent
  get "dashboard", to: "pages#dashboard", as: :dashboard
  get "receivingday", to: "pages#receivingday", as: :receiving_day
end
