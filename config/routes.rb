Rails.application.routes.draw do
  resources :people, only: [:index, :show] do
    resources :cars, only: [:index, :show]
  end
end
