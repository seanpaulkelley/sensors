Rails.application.routes.draw do
  resources :readings
  resources :plants
  resources :plantings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount_ember_app :frontend, to: "/"
end
