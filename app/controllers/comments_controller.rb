class CommentsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(params[:comment].merge(:user_id => current_user))
 end

  def destroy
    
  end
end
