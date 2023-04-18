Rails.application.routes.draw do
  get '/admin', to: 'admin#index'
  delete 'users/:id', to: 'admin#delete_user', as: :delete_user
  delete '/admin/events/:id', to: 'admin#delete_event', as: :delete_event


  devise_for :users
  resources :events
  resources :addresses
  root 'pages#index'
  resources :events do
    get 'register', on: :member
    get 'unregister', on: :member

  end
end
