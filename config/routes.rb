Rails.application.routes.draw do
  get 'cleaning_works/index'
  get 'product_management_works/index'
  root 'top#index'
  resources :regular_works
  resources :deliver_works
  resources :product_management_works
  resources :cleaning_works
end
