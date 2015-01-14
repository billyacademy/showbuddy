Rails.application.routes.draw do
  resources :venues, only: [:index, :show]
  resources :concerts, only: [:new, :index, :create, :show] do
    resources :rsvps, only: [:create, :new]
  end

  resources :users, only: [:show]

  root 'welcomes#index'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get]
  match 'auth/failure', to: redirect('/'), via: [:get]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get]
  #match 'auth/twitter/callback', to: 'sessions#create'
end
