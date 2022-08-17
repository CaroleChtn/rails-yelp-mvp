Rails.application.routes.draw do
  get 'restaurant/top'
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
    # resources :reviews, only: [:destroy]
end
