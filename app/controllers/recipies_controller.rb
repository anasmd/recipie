class RecipiesController < ApplicationController
  def new
    @recipy = Recipy.new
     3.times { @recipy.ingredients.build }
  end
  
  def create
    @recipy = Recipy.new(params[:recipy])
    @recipy.save
  end
end
