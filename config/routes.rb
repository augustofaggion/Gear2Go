Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root to: 'gears#index'

  resources :gears, only: [:show, :new, :edit, :create, :update, :delete] do
    resources :bookings, only: [:create, :show]
  end

  get '/my_gears', to: 'gears#my_gears'

  resources :bookings, only: [:index]


  # namespace :dashboard, only: [:show ] do
  #   resources :gears, except: [:show]
  # end

end
