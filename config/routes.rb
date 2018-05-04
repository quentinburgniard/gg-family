Rails.application.routes.draw do
  devise_for :companies
  get 'projects/:id/init', to: 'projects#init'
  get 'projects/:id/companion', to: 'projects#companion'
  root 'workflows#index'
  resources :projects
  resources :travel_companion_appearances
  resources :travel_companions
  resources :workflow_stages
  resources :workflows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
