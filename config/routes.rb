Rails.application.routes.draw do
  resources :tasks
  resources :days
  resources :months
  resources :years
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
