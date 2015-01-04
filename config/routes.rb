Rails.application.routes.draw do
resources :venues, only: [:index, :show]
resources :concerts, only: [:new]

root 'welcomes#index'
end
