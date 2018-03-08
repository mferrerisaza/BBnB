Rails.application.routes.draw do
  get 'dashboard', to: 'dashboards#show', as: "dashboard"
  devise_for :users
  root to: 'pages#home'

  resources :boats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
