class RecipiesController < ApplicationController
  def new
    @recipy = Recipy.new
     3.times { @recipy.ingredients.build }
  end
end
