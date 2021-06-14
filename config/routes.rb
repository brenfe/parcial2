Rails.application.routes.draw do
  resources :guards
  resources :appointments
  resources :worker_centers
  resources :workers
  resources :worker_types
  resources :medical_centers
  resources :medical_center_types
  resources :homes
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'
  get 'administrators', to: 'administrators#index'
  get 'toggle_admin', to: 'administrators#toggle_admin'
end
