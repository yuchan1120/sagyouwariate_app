Rails.application.routes.draw do
  root 'top#index'
  resources :regular_works
end
