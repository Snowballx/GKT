Rails.application.routes.draw do
  resources :products, only: [:index, :new, :create, :show, :edit, :update, :delete] do
    resources :comments, only: [:create]
  end
  
  delete 'product' => 'products#destroy'

  resources :charges
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  #Devise gem with facebook omniauth, hits users controller with callbacks redirect
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
