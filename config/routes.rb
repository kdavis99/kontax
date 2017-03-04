Rails.application.routes.draw do
  resources :contacts
  resources :updates
  resources :events
  resources :jobs
  devise_for :users

  resources :jobs do
     resources :contacts, :shallow => true
  end
  root 'jobs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
