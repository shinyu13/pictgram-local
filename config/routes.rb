Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'

  resources :users
  resources :topics
  resources :comments

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'

  get 'comments/index'
  post '/comments', to: 'comments#create'
  delete '/comments', to: 'comments#destroy'
end
