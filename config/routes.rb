Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cars do
    resources :users, only: %i[new create]
  end
end
