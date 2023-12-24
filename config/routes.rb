Rails.application.routes.draw do
  # get '/health_check', to: 'health_checks#show'
  # root to: 'samples#index'
  root to: 'posts#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'

  resources :posts do
    resources :comments, module: :posts
    resource :like, only: %i[create destroy], module: :posts
  end

  resources :users, only: [] do
    resource :relationship, only: %i[create destroy], module: :users
  end
end
