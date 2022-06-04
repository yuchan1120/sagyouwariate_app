Rails.application.routes.draw do
  root 'top#index'
  resources :regular_works
  resources :deliver_works
end
