class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
  end

  def create

  end

  private

  def recipes_params
    params.require(:ingredients).permit(:title, :name, :quantity)
  end
end
