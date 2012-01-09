class ChangeRecipyId < ActiveRecord::Migration
  def up
    rename_column :ingredients, :recipy_id, :recipe_id
  end

  def down
    rename_column :ingredients, :recipe_id, :recipy_id
  end
end
