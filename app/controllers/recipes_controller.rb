class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.find(:all, :include => [:ingredients, :image])
  end
  
  def show
    @recipe = Recipe.find params[:id]
    @comments = @recipe.comments.recent.limit(10).all
    @comment = @recipe.comments.build
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
  
  def edit
    @recipe = Recipe.find params[:id]
  end
  
  def update
    @recipe = Recipe.find params[:id]
    @recipe.update_attributes(params[:recipe])
    redirect_to @recipe
  end
end
