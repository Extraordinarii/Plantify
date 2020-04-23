Rails.application.routes.draw do
  get 'waterings/date'
  get 'waterings/amount'

  get '/apply', to: "sessions#new"
  post '/apply', to: "sessions#create_account"
  post '/login', to: "sessions#create"
  get '/login', to: "sessions#login"
  get '/logout', to: "sessions#destroy"
  get '/sessions/welcome'

  get '/home', to: "plant_types#index"
  post '/plants/:id/water', to: "plants#water_plant"
  post '/planty/new', to: "plants#planty"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: "plants#landing_page"
  resources :plants
  resources :plant_types
  resources :owners
  

end
