Rails.application.routes.draw do
  get 'cleaning_works/index'
  get 'product_management_works/index'
  root 'top#index'
  resources :tables
  resources :regular_works
  resources :deliver_works
  resources :product_management_works
  resources :cleaning_works
  get 'search_deliver_work' => 'deliver_works#search'
  get 'search_product_management_work' => 'product_management_works#search'
  get 'search_cleaning_work' => 'cleaning_works#search'
end
