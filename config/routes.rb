Rails.application.routes.draw do
resources :venues, only: [:index, :show]
resources :concerts, only: [:new, :index]

root 'welcomes#index'
end
