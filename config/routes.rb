Rails.application.routes.draw do
  resources :claims
  resources :bids
  devise_for :users
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products
  resources :products do
    member do
      get :details
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end