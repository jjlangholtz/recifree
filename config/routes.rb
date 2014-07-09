Rails.application.routes.draw do

  root to: "home#index"

  resources :recipes do
    get 'tags/:tag' => 'recipes#tags', on: :collection, as: :tag
  end

  devise_for :users
  resources :users, only: :show
end
