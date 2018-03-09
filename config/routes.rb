Rails.application.routes.draw do
  resources :profiles, only: [:create,:update]
  get 'dashboard', to: 'dashboards#show', as: "dashboard"
  devise_for :users
  root to: 'pages#home'
  resources :boats do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: :update
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
