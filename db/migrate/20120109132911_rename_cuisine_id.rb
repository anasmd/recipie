class RenameCuisineId < ActiveRecord::Migration
  def up
    remove_column :recipes, :cusisine_id
  end

  def down
    add_column :recipes, :cusisine_id, :integer
  end
end
