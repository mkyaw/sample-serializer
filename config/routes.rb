Rails.application.routes.draw do
  resources :people, only: [:index, :show]
  resources :cars, only: [:index, :show]
end
