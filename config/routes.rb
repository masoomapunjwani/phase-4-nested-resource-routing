Rails.application.routes.draw do
  
  resources :reviews, only: [:show, :index, :create]

  resources :dog_houses, only: [:show] do
    # nested resource for reviews
    resources :reviews, only: [:show, :index]
  end
end