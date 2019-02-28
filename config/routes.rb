Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :chefs, only: [:new, :create, :index, :show] do
    resources :bookings, only: [:create, :show]
  end
  resources :bookings, only: [:destroy, :update]
  get '/dashboard', to: "dashboard#show"
end
