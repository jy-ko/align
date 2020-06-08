Rails.application.routes.draw do
  get 'mypage/index'
  resources :workshops
  resources :centres
  resources :bookings, only: [:create, :destroy]
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
