Rails.application.routes.draw do
  resources :users
  post '/webhooks/receive', to: 'webhooks#receive'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
