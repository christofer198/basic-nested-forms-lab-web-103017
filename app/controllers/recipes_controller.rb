class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'one')
    @recipe.ingredients.build(name: 'two')
  end

  def create
    @recipe = Recipe.new(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredient_attributes[:name, :quantity])
  end
end
