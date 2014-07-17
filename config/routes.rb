Rails.application.routes.draw do

  root to: "home#index"

  resources :recipes, only: [:show, :new, :create, :edit, :update, :destroy] do
    get 'tags/:tag' => 'recipes#tags', on: :collection, as: :tag
  end

  namespace :api, defaults: { format: :json } do
    resources :recipes, only: [:index, :show]
  end

  devise_for :users
  resources :users, only: :show
end
