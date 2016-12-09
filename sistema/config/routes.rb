Rails.application.routes.draw do
  resources :scores
  resources :bimesters
  devise_for :users
  get 'welcome/index'
  
  resources :students
  resources :groups
  resources :subjects
  resources :grades
  resources :periods
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
