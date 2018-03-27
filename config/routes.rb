Rails.application.routes.draw do
  
  resources :orders
  devise_for :users
  #root 'products#index'
  root 'orders#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
