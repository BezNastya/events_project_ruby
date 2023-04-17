Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :addresses
  root 'pages#index'
  resources :events do
    get 'register', on: :member
    get 'unregister', on: :member
  end
end
