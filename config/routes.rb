Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  devise_for :users, controllers: { registrations: 'registrations' }

  # Setting the root path to the home page
  root 'pages#home'
  delete '/logout', to: 'sessions#destroy', as: :logout
  get 'foods/index'
  get 'foods/pizza'
  get 'foods/burgers'
  get 'foods/sushi'
  get '/parse_wikipedia', to: 'business_models#parse_wikipedia'
  get '/pizza', to: 'foods#pizza'
  get '/sushi', to: 'foods#sushi'
  get '/burgers', to: 'foods#burgers'

  resource :profile, only: [:show, :edit, :update]
end
