class API::RecipesController < ApplicationController
  def index
    @recipes = Recipe.order(:name)
  end
end
