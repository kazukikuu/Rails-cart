Rails.application.routes.draw do

  get 'products/index'
  get 'cart/products/:id' => "carts#new"
  post 'cart/new' => "carts#create"
  get 'cart/index' => "carts#index"

  get 'history/index' => "histories#index"
  get 'cart/history/create' => "histories#create"

  resources :sessions, only: [:create,:new]

  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  get 'user/edit/:id' => 'users#edit'
  get 'user/show/:id' => 'users#show'

  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
