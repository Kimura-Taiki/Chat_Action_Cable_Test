Rails.application.routes.draw do
  mount ActionCable.server => "/cable"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "rooms#show"
  resources :messages, only: :create
end
