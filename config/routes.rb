Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root to: 'gears#index'
  devise_for :users
  delete '/dashboard/gears/:id', to: 'dashboard/gears#destroy', as: 'dashboard_gear'

  resources :gears, only: [:index, :show] do
    resources :bookings, only: [:create, :show]
  end

  namespace :dashboard do
    resources :gears, except: [:show]
  end

  get 'dashboard', to: 'dashboard#show'



end
