Rails.application.routes.draw do
  resources :orders
  resources :users
  
  resources :line_items do
    collection do
      post :decrease
    end
  end

  root 'store#index', as: 'store_index'
  
  resources :products

  resources :carts do
    # delete :destroy_new, on: :collection
    delete :destroy_new
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end