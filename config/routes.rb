Rails.application.routes.draw do
resources :venues, only: [:index]

root 'welcomes#index'
end
