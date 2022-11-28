Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :shoes
  resources :carts
  get 'login/index'
  get 'contacts/index'
  get 'blog/index'
  get 'about/index'
  get 'home/index'
  

    
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
