class AddCuisineIdToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :cuisine_id, :integer
  end
end
