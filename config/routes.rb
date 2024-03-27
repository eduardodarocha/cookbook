Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  # get '/', to: 'home#index'
  root to: 'home#index'
  # get '/ola', to: 'home#ola' # visitante => (/ola) => home_controller => ola(action/metodo 'def') => resposta (view)

  # Defines the root path route ("/")
  # root "posts#index"

  # get 'receitas/:id', to: 'recipes#show', as: 'recipe'
  resources :recipes, only: [:show, :new, :create, :edit, :update]
  resources :recipe_types, only: [:new, :create]
  resources :cuisines, only: [:new, :create]
end
