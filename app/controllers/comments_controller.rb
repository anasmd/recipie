class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(params[:comment].merge(:user => current_user))
  end

  def destroy
    @recipe = Recipe.find params[:recipe_id]
    @comment = @recipe.comments.find params[:id]
    @comment.destroy unless @comment.user != current_user
   end
end
