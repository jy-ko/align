Rails.application.routes.draw do
  resources :workshops
  resources :centres
  resources :instructors
  resources :bookings
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
