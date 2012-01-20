class RecipesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @recipes = Recipe.find(:all, :include => [:ingredients, :image])
  end
  
  def show
    @recipe = Recipe.find params[:id]
    @comments = @recipe.comments.all
    @comment = Comment.new
  end
  
  def new
    @recipe = Recipe.new
    3.times { @recipe.ingredients.build }
    @recipe.build_image
  end
  
  def create
    @recipe = current_user.recipes.new(params[:recipe])
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
  
  def destroy
    
  end
  
  def rate
    
  end
end
