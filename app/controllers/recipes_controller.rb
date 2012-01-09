class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.find(:all, :include => [:ingredients, :image])
  end
  
  def new
    @recipe = Recipe.new
    3.times { @recipe.ingredients.build }
    @recipe.build_image
  end
  
  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.save
    redirect_to recipes_path
  end
end
