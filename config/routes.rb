Rails.application.routes.draw do
  resources :events
  resources :addresses
  root 'pages#index'
end
