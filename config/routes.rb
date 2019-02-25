Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :chefs, only: [:index, :show] do
    resources :bookings, only: [:create, :show]
  end
  resources :users, only: :show
  resources :bookings, only: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
