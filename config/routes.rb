Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, shallow: true, only: [:new, :create]
  end
end 
