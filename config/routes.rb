Rails.application.routes.draw do
  get '/apply', to: "sessions#new"
  get '/create', to: "sessions#create"
  get '/login', to: "sessions#login"
  get 'sessions/welcome'
  
  get 'plants/:id', to: 'plants#show', as: "plants"
  patch 'plants/:id', to: 'plants#update'
  get 'plants/:id/edit', to: 'plants#edit', as: "new_plant"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: "plants#landing_page"
  resources :plants
  resources :plant_types
  resources :owners


end
