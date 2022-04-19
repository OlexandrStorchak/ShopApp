Rails.application.routes.draw do
  root "pages#index"
  resources :products
  get "/product/not_found", to: "products#product_not_found"
  get "/search", to: "products#search"
  resources :product_categories
end
