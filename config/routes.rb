Rails.application.routes.draw do
  resources :orders
  resources :users
  
  resources :line_items do
    collection do
      post :decrease
    end
  end

  root 'store#index', as: 'store_index'
  
  resources :products do
    get :who_bought, on: :member
  end

  resources :carts do
    collection do
    get :current_cart
    delete :destroy_new
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end