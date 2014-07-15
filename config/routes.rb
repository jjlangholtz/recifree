Rails.application.routes.draw do

  root to: "home#index"

  resources :recipes, only: [:show, :new, :create, :edit, :update, :destroy] do
    get 'tags/:tag' => 'recipes#tags', on: :collection, as: :tag
  end

  namespace :api, constraints: { subdomain: 'api' } do
    resources :recipes, only: [:index]
  end

  devise_for :users
  resources :users, only: :show
end
