Rails.application.routes.draw do
  devise_for :admin_users, controllers: {
    sessions:      'admin_users/sessions',
    passwords:     'admin_users/passwords',
    registrations: 'admin_users/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  resources :shipments
  resources :settlements
  resources :order_items
  resources :orders
  resources :cart_items
  resources :carts do
    post :add_cart
  end
  get "registrations/confirm", to: "registrations#confirm"
  resources :products
  resources :shops
  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
