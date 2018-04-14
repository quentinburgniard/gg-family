Rails.application.routes.draw do
  resources :travel_companion_appearances
  resources :travel_companions
  resources :workflow_stages
  resources :workflows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
