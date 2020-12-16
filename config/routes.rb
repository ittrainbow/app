Rails.application.routes.draw do
  resources :users
  resources :line_items
  root 'store#index', as: 'store_index'
  resources :products

  resources :carts do
    delete :destroy_new, on: :collection
  end

  resources :store do
    collection do
      post :null_count
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end