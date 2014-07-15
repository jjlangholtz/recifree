class RecipesController < ApplicationController
  layout 'home'

  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def show
    @ingredients = @recipe.ingredients
  end

  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to root_url, notice: 'Recipe was successfully created.'
    else
      render :new
    end
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Recipe was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to root_url, notice: 'Recipe was successfully destroyed.'
  end

  def tags
    @tag = params[:tag]
    @recipes = Recipe.tagged_with(@tag).order(:name)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name, :photo, :directions, :tag_list, :user_id, ingredients_attributes: [:id, :amount, :unit, :name, :_destroy])
    end
end
