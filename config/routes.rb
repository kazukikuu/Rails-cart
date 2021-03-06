Rails.application.routes.draw do


  root to: 'products#index'
  # カート
  post '/' => "products#require_valid_token"
  get '/product' => "products#index"
  get 'cart/products/:id' => "carts#new"
  post 'cart/new' => "carts#create"
  post 'cart/item' => "cart/product_params"
  get 'cart/index' => "carts#index"
  get 'cart/empty' => 'carts#empty'
  post 'cart/plus/:id' => 'carts#plus'
  post 'cart/minus/:id' => 'carts#minus'
  get 'cart/destroy/:id' => 'carts#destroy'

  # 履歴
  get 'history/index' => "histories#index"
  post 'cart/history/create' => "histories#create"
  # セッション
  resources :sessions, only: [:create,:new]
  # 注文キャンセル
  get 'cancel/index' => "cancels#index"
  post '/cancel' => "cancels#update"

  # ユーザー新規登録
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'

  # ユーザー編集
  # get 'user/:id' => 'users#edit'
  # post 'user/:id' => 'users#update'
  get 'user/show' => 'users#show'

  # ログイン・ログアウト
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
