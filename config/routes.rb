Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
  resources :reviews, only: [:index, :create]
    end
end 
