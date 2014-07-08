Rails.application.routes.draw do
  root to: "home#index"

  resources :recipes

  devise_for :users
end
