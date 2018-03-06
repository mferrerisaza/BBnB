Rails.application.routes.draw do
  get 'dashboard', to: 'dashboards#show', as: "dashboard"
  devise_for :users
  root to: 'pages#home'

  resources :boats, only: [:index, :show, :new, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
