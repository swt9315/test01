Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions' }
    
    devise_scope :user do
      get 'users/index', to: 'users/registrations#index'
      get 'users/destroy', to: 'users/sessions#destroy'
    end 

  root 'items#index'
  post 'items', to: 'items#create'
  resources :items
end
