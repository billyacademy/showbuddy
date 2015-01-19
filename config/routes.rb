Rails.application.routes.draw do
  resources :venues, only: [:index, :show, :create]

  resources :concerts, only: [:new, :index, :create, :show] do
    resources :rsvps, only: [:create, :new, :show]
  end

  resources :concerts, only: [:new, :index, :create, :show] do
    resources :matches, only: [:create, :new, :show]
  end

  resources :users, only: [:show]

  namespace :admin do
    resources :users, only: [:index, :destroy]
    resources :venues, only: [:index, :destroy, :new, :update, :edit, :create]
  end

  root 'welcomes#index'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get]
  match 'auth/failure', to: redirect('/'), via: [:get]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get]
  #match 'auth/twitter/callback', to: 'sessions#create'
end
