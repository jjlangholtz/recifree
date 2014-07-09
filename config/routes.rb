Rails.application.routes.draw do

  root to: "home#index"

  resources :users, only: :show
  resources :recipes do
    get 'tags/:tag' => 'recipes#tags', on: :collection, as: :tag
  end

  devise_for :users
end
