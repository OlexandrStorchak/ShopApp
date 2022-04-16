Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#index"
  resources :products
  get "/product/not_found", to: "products#product_not_found"
  resources :product_categories do
    resources :products
  end
end
