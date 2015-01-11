Rails.application.routes.draw do
resources :venues, only: [:index, :show]
resources :concerts, only: [:new, :index, :create, :show]

root 'welcomes#index'
end
