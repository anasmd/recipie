class CommentsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.comments.create(params[:comment].merge(:user_id => current_user))
    redirect_to @recipe
  end

  def destroy
    
  end
end
