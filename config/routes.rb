Rails.application.routes.draw do
  resources :complaints
  devise_for :users
  resources :companies do
  	resources :complaints
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "companies#index"
end
