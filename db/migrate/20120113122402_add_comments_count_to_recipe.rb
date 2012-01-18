 class AddCommentsCountToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :comments_count, :integer, :default => 0
    Recipe.reset_column_information
    Recipe.find(:all).each do |r|
    Recipe.update_counters r.id, :comments_count => r.comments.length
  end

   end
end
