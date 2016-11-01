Rails.application.routes.draw do
  resources :products, only: [:index, :new, :create, :show, :edit]

  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  devise_for :users
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
