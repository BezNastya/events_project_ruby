Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :addresses
  root 'pages#index'
  resources :events do
    post 'register', on: :member
  end
end
