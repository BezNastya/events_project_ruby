Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :addresses
  root 'pages#index'
end
