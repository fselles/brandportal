Rails.application.routes.draw do
  resources :users
  resource :session, only: [:new, :create, :destroy]
  root "jobs#index"
  resources :jobs do
  resources :tasks
end
  get 'aanmelden' => 'users#new'
  get "inloggen" => "sessions#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
