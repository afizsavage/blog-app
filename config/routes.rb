Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show]
  end

  # root "articles#index"
  root 'posts#index'
end
