Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: "plants#landing_page"
  resources :plants, only: [:index, :show, :edit, :delete]
  resources :plant_types
  resources :owners


end
