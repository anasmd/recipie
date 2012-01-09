class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    3.times { @recipe.ingredients.build }
    @recipe.build_image
  end
  
  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.save
    redirect_to :action => :new
  end
end
