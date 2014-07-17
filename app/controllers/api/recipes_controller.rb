class API::RecipesController < API::BaseController
  respond_to :json

  def index
    @recipes = Recipe.order(:name).page params[:page]
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
